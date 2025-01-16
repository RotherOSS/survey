# --
# OTOBO is a web-based ticketing system for service organisations.
# --
# Copyright (C) 2001-2020 OTRS AG, https://otrs.com/
# Copyright (C) 2019-2025 Rother OSS GmbH, https://otobo.io/
# --
# This program is free software: you can redistribute it and/or modify it under
# the terms of the GNU General Public License as published by the Free Software
# Foundation, either version 3 of the License, or (at your option) any later version.
# This program is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
# FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <https://www.gnu.org/licenses/>.
# --

use strict;
use warnings;
use utf8;

our $Self;

$Kernel::OM->ObjectParamAdd(
    'Kernel::System::UnitTest::Helper' => {
        RestoreDatabase => 1,
    },
);
my $HelperObject = $Kernel::OM->Get('Kernel::System::UnitTest::Helper');
my $ConfigObject = $Kernel::OM->Get('Kernel::Config');

# Do not check emails.
$ConfigObject->Set(
    Key   => 'CheckEmailAddresses',
    Value => 0,
);

# Get Ticket object.
my $TicketObject = $Kernel::OM->Get('Kernel::System::Ticket');

# Create some tickets.
my $TicketID1 = $TicketObject->TicketCreate(
    Title        => 'Some Ticket Title',
    Queue        => 'Raw',
    Lock         => 'unlock',
    Priority     => '3 normal',
    State        => 'new',
    CustomerID   => '123465',
    CustomerUser => 'customer@example.com',
    OwnerID      => 1,
    UserID       => 1,
);
$Self->IsNot(
    $TicketID1,
    undef,
    "TicketCreate() for TicketID $TicketID1",
);

my $TicketID2 = $TicketObject->TicketCreate(
    Title        => 'Some Ticket Title',
    Queue        => 'Raw',
    Lock         => 'unlock',
    Priority     => '3 normal',
    State        => 'new',
    CustomerID   => '123465',
    CustomerUser => 'customer@example.com',
    OwnerID      => 1,
    UserID       => 1,
);
$Self->IsNot(
    $TicketID2,
    undef,
    "TicketCreate() for TicketID $TicketID2",
);

my $TicketID3 = $TicketObject->TicketCreate(
    Title    => 'Some Ticket Title',
    Queue    => 'Raw',
    Lock     => 'unlock',
    Priority => '3 normal',
    State    => 'new',
    OwnerID  => 1,
    UserID   => 1,
);
$Self->IsNot(
    $TicketID3,
    undef,
    "TicketCreate() for TicketID $TicketID3",
);

my $ArticleObject = $Kernel::OM->Get('Kernel::System::Ticket::Article');

my $ArticlePhoneBackendObject = $ArticleObject->BackendForChannel(
    ChannelName => 'Phone',
);

# Create articles for the tickets.
my $ArticleID1 = $ArticlePhoneBackendObject->ArticleCreate(
    TicketID             => $TicketID1,
    IsVisibleForCustomer => 1,
    SenderType           => 'customer',
    From                 => 'Some Customer <email@example.com>',
    To                   => 'Some Agent <agent@example.com>',
    Subject              => 'some short description',
    Body                 => 'the message text',
    ContentType          => 'text/plain; charset=ISO-8859-15',
    HistoryType          => 'AddNote',
    HistoryComment       => 'Some free text!',
    UserID               => 1,
);
$Self->IsNot(
    $TicketID3,
    undef,
    "ArticleCreate() for ArticleID $ArticleID1",
);

my $ArticleInternalBackendObject = $ArticleObject->BackendForChannel(
    ChannelName => 'Internal',
);
my $ArticleID2 = $ArticleInternalBackendObject->ArticleCreate(
    TicketID             => $TicketID2,
    IsVisibleForCustomer => 1,
    SenderType           => 'agent',
    From                 => 'Some Agent <agent@example.com>',
    To                   => 'Some Customer <email@example.com>',
    Subject              => 'some short description',
    Body                 => 'the message text',
    ContentType          => 'text/plain; charset=ISO-8859-15',
    HistoryType          => 'AddNote',
    HistoryComment       => 'Some free text!',
    UserID               => 1,
);
$Self->IsNot(
    $TicketID3,
    undef,
    "ArticleCreate() for ArticleID $ArticleID2",
);

my @Tests = (
    {
        Name    => 'No Params',
        Param   => {},
        Success => 0,
    },
    {
        Name  => 'Wrong UserEMail',
        Param => {
            UserEmail => 'User',
        },
        Success => 0,
    },
    {
        Name  => 'Wrong TicketID',
        Param => {
            TicketID => $TicketID3,
        },
        Success => 0,
    },
    {
        Name  => 'UserEmail',
        Param => {
            UserEmail => 'User <user@home.com>',
        },
        Success         => 1,
        ExpectedResults => 'user@home.com',
    },
    {
        Name  => 'UserEmail Multiple',
        Param => {
            UserEmail => 'User <user@example.com>, User2 <user2@home.com>',
        },
        Success         => 1,
        ExpectedResults => 'user2@home.com',
    },
    {
        Name  => 'TicketID Last article customer',
        Param => {
            TicketID => $TicketID1,
        },
        Success         => 1,
        ExpectedResults => 'email@example.com',
    },
    {
        Name  => 'TicketID Last article agent',
        Param => {
            TicketID => $TicketID2,
        },
        Success         => 1,
        ExpectedResults => 'email@example.com',
    },
    {
        Name  => 'UserEmail (BlackList)',
        Param => {
            UserEmail => 'User <user@example.com>',
        },
        BlackList => ['user@example.com'],
        Success   => 0,
    },
    {
        Name  => 'UserEmail Multiple (BlackList)',
        Param => {
            UserEmail => 'User <user@example.com>, User2 <user2@example.com>',
        },
        BlackList => ['user2@example.com'],
        Success   => 0,
    },
    {
        Name  => 'TicketID Last article customer (BlackList)',
        Param => {
            TicketID => $TicketID1,
        },
        BlackList => ['email@example.com'],
        Success   => 0,
    },
    {
        Name  => 'TicketID Last article agent (BlackList)',
        Param => {
            TicketID => $TicketID2,
        },
        BlackList => ['email@example.com'],
        Success   => 0,
    },

    {
        Name  => 'uc UserEmail (BlackList)',
        Param => {
            UserEmail => 'User <User@example.com>',
        },
        BlackList => ['user@example.com'],
        Success   => 0,
    },
    {
        Name  => 'uc UserEmail Multiple (BlackList)',
        Param => {
            UserEmail => 'User <user@example.com>, User2 <User2@example.com>',
        },
        BlackList => ['user2@example.com'],
        Success   => 0,
    },
    {
        Name  => 'UserEmail (uc BlackList)',
        Param => {
            UserEmail => 'User <user@example.com>',
        },
        BlackList => ['User@example.com'],
        Success   => 0,
    },
    {
        Name  => 'UserEmail Multiple (uc BlackList)',
        Param => {
            UserEmail => 'User <user@example.com>, User2 <user2@example.com>',
        },
        BlackList => ['User2@example.com'],
        Success   => 0,
    },
    {
        Name  => 'TicketID Last article customer (uc BlackList)',
        Param => {
            TicketID => $TicketID1,
        },
        BlackList => ['email@example.com'],
        Success   => 0,
    },
    {
        Name  => 'TicketID Last article agent (uc BlackList)',
        Param => {
            TicketID => $TicketID2,
        },
        BlackList => ['email@example.com'],
        Success   => 0,
    },
    {
        Name  => 'uc UserEmail (uc BlackList)',
        Param => {
            UserEmail => 'User <User@example.com>',
        },
        BlackList => ['User@example.com'],
        Success   => 0,
    },
    {
        Name  => 'uc UserEmail Multiple (uc BlackList)',
        Param => {
            UserEmail => 'User <user@example.com>, User2 <User2@example.com>',
        },
        BlackList => ['User2@example.com'],
        Success   => 0,
    },
);

my $SurveyObject = $Kernel::OM->Get('Kernel::System::Survey');

TEST:
for my $Test (@Tests) {

    # Set blacklist.
    $ConfigObject->Set(
        Key   => 'Survey::NotificationRecipientBlacklist',
        Value => $Test->{BlackList} // [],
    );

    # Execute actual test.
    my $Recipient = $SurveyObject->_GetRequestRecipient( %{ $Test->{Param} } );

    if ( !$Test->{Success} ) {
        $Self->Is(
            $Recipient,
            undef,
            "$Test->{Name} - _GetRequestRecipient()",
        );

        next TEST;
    }
    $Self->Is(
        $Recipient,
        $Test->{ExpectedResults},
        "$Test->{Name} - _GetRequestRecipient()",
    );

}

1;
