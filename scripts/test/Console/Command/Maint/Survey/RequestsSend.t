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

my @Tests = (
    {
        Name     => "No Params 'SendInHoursAfterClose' disabled",
        Params   => [],
        Config   => 0,
        ExitCode => 0,
    },
    {
        Name     => "Wrong Param 'SendInHoursAfterClose' disabled",
        Params   => ['--test'],
        Config   => 0,
        ExitCode => 1,
    },
    {
        Name     => "Force param 'SendInHoursAfterClose' disabled",
        Params   => ['--force'],
        Config   => 0,
        ExitCode => 0,
    },
    {
        Name     => "No Params 'SendInHoursAfterClose' enabled",
        Params   => [],
        Config   => 1,
        ExitCode => 0,
    },
    {
        Name     => "Wrong Param 'SendInHoursAfterClose' enabled",
        Params   => ['--test'],
        Config   => 1,
        ExitCode => 1,
    },
    {
        Name     => "Force param 'SendInHoursAfterClose' enabled",
        Params   => ['--force'],
        Config   => 1,
        ExitCode => 0,
    },

);

# get needed objects
my $CommandObject = $Kernel::OM->Get('Kernel::System::Console::Command::Maint::Survey::RequestsSend');
my $ConfigObject  = $Kernel::OM->Get('Kernel::Config');

for my $Test (@Tests) {

    # set config
    $ConfigObject->Set(
        Valid => 1,
        Key   => 'Survey::SendInHoursAfterClose',
        Value => $Test->{Config},
    );

    my $ExitCode = $CommandObject->Execute( @{ $Test->{Params} } );

    $Self->Is(
        $ExitCode,
        $Test->{ExitCode},
        "$Test->{Name} - ExitCode",
    );
}

1;
