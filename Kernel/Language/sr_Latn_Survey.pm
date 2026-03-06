# --
# OTOBO is a web-based ticketing system for service organisations.
# --
# Copyright (C) 2001-2020 OTRS AG, https://otrs.com/
# Copyright (C) 2019-2026 Rother OSS GmbH, https://otobo.io/
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

package Kernel::Language::sr_Latn_Survey;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # Template: AgentSurveyAdd
    $Self->{Translation}->{'Create New Survey'} = '';
    $Self->{Translation}->{'Introduction'} = '';
    $Self->{Translation}->{'Survey Introduction'} = '';
    $Self->{Translation}->{'Notification Body'} = '';
    $Self->{Translation}->{'Internal Description'} = '';
    $Self->{Translation}->{'Customer conditions'} = '';
    $Self->{Translation}->{'Please choose a Customer property to add a condition.'} = '';
    $Self->{Translation}->{'Public survey key'} = '';
    $Self->{Translation}->{'Example survey'} = '';

    # Template: AgentSurveyEdit
    $Self->{Translation}->{'Edit General Info'} = '';

    # Template: AgentSurveyEditQuestions
    $Self->{Translation}->{'Edit Questions'} = '';
    $Self->{Translation}->{'You are here'} = '';
    $Self->{Translation}->{'Survey Questions'} = '';
    $Self->{Translation}->{'Add Question'} = '';
    $Self->{Translation}->{'Type the question'} = '';
    $Self->{Translation}->{'Answer required'} = '';
    $Self->{Translation}->{'No questions saved for this survey.'} = '';
    $Self->{Translation}->{'Question'} = '';
    $Self->{Translation}->{'Answer Required'} = '';
    $Self->{Translation}->{'When you finish to edit the survey questions just close this screen.'} =
        '';
    $Self->{Translation}->{'Close this window'} = '';
    $Self->{Translation}->{'Edit Question'} = '';
    $Self->{Translation}->{'go back to questions'} = '';
    $Self->{Translation}->{'Question:'} = '';
    $Self->{Translation}->{'Possible Answers For'} = '';
    $Self->{Translation}->{'Add Answer'} = '';
    $Self->{Translation}->{'No answers saved for this question.'} = '';
    $Self->{Translation}->{'This doesn\'t have several answers, a textarea will be displayed.'} =
        '';
    $Self->{Translation}->{'Edit Answer'} = '';
    $Self->{Translation}->{'go back to edit question'} = '';
    $Self->{Translation}->{'Answer:'} = '';

    # Template: AgentSurveyOverviewNavBar
    $Self->{Translation}->{'Survey overview options'} = '';
    $Self->{Translation}->{'Searches in the attributes Number, Title, Introduction, Description, NotificationSender, NotificationSubject and NotificationBody, overriding other attributes with the same name.'} =
        '';
    $Self->{Translation}->{'Survey Create Time'} = '';
    $Self->{Translation}->{'No restriction'} = '';
    $Self->{Translation}->{'Only surveys created between'} = '';
    $Self->{Translation}->{'Max. shown surveys per page'} = '';

    # Template: AgentSurveyOverviewSmall
    $Self->{Translation}->{'Notification Sender'} = '';
    $Self->{Translation}->{'Notification Subject'} = '';
    $Self->{Translation}->{'Changed By'} = '';

    # Template: AgentSurveyStats
    $Self->{Translation}->{'Stats Overview of'} = '';
    $Self->{Translation}->{'Requests Table'} = '';
    $Self->{Translation}->{'Select all requests'} = '';
    $Self->{Translation}->{'Send Time'} = '';
    $Self->{Translation}->{'Vote Time'} = '';
    $Self->{Translation}->{'Select this request'} = '';
    $Self->{Translation}->{'See Details'} = '';
    $Self->{Translation}->{'Delete stats'} = '';
    $Self->{Translation}->{'Survey Stat Details'} = '';
    $Self->{Translation}->{'go back to stats overview'} = '';
    $Self->{Translation}->{'Previous vote'} = '';
    $Self->{Translation}->{'Next vote'} = '';

    # Template: AgentSurveyZoom
    $Self->{Translation}->{'Survey Information'} = '';
    $Self->{Translation}->{'Sent requests'} = '';
    $Self->{Translation}->{'Received surveys'} = '';
    $Self->{Translation}->{'Survey Details'} = '';
    $Self->{Translation}->{'Ticket Services'} = '';
    $Self->{Translation}->{'Survey Results Graph'} = '';
    $Self->{Translation}->{'No stat results.'} = '';

    # Template: PublicSurvey
    $Self->{Translation}->{'Survey'} = '';
    $Self->{Translation}->{'Please answer these questions'} = '';
    $Self->{Translation}->{'Show my answers'} = '';
    $Self->{Translation}->{'These are your answers'} = '';
    $Self->{Translation}->{'Survey Title'} = '';

    # Perl Module: Kernel/Modules/AgentSurveyAdd.pm
    $Self->{Translation}->{'Add New Survey'} = '';

    # Perl Module: Kernel/Modules/AgentSurveyEdit.pm
    $Self->{Translation}->{'You have no permission for this survey!'} = '';
    $Self->{Translation}->{'No SurveyID is given!'} = '';
    $Self->{Translation}->{'Survey Edit'} = '';

    # Perl Module: Kernel/Modules/AgentSurveyEditQuestions.pm
    $Self->{Translation}->{'You have no permission for this survey or question!'} = '';
    $Self->{Translation}->{'You have no permission for this survey, question or answer!'} = '';
    $Self->{Translation}->{'Survey Edit Questions'} = '';
    $Self->{Translation}->{'Yes/No'} = '';
    $Self->{Translation}->{'Radio (List)'} = '';
    $Self->{Translation}->{'Checkbox (List)'} = '';
    $Self->{Translation}->{'Net Promoter Score'} = '';
    $Self->{Translation}->{'Question Type'} = '';
    $Self->{Translation}->{'Complete'} = '';
    $Self->{Translation}->{'Incomplete'} = '';
    $Self->{Translation}->{'Question Edit'} = '';
    $Self->{Translation}->{'Answer Edit'} = '';

    # Perl Module: Kernel/Modules/AgentSurveyStats.pm
    $Self->{Translation}->{'Stats Overview'} = '';
    $Self->{Translation}->{'You have no permission for this survey or stats detail!'} = '';
    $Self->{Translation}->{'Stats Detail'} = '';

    # Perl Module: Kernel/Modules/AgentSurveyZoom.pm
    $Self->{Translation}->{'Can\'t set new status! No questions defined.'} = '';
    $Self->{Translation}->{'Can\'t set new status! Questions incomplete.'} = '';
    $Self->{Translation}->{'Status changed.'} = '';
    $Self->{Translation}->{'- No queue selected -'} = '';
    $Self->{Translation}->{'- No ticket type selected -'} = '';
    $Self->{Translation}->{'- No ticket service selected -'} = '';
    $Self->{Translation}->{'- Change Status -'} = '';
    $Self->{Translation}->{'Master'} = '';
    $Self->{Translation}->{'Invalid'} = '';
    $Self->{Translation}->{'New Status'} = '';
    $Self->{Translation}->{'Survey Description'} = '';
    $Self->{Translation}->{'answered'} = '';
    $Self->{Translation}->{'not answered'} = '';

    # Perl Module: Kernel/Modules/PublicSurvey.pm
    $Self->{Translation}->{'Thank you for your feedback.'} = '';
    $Self->{Translation}->{'The survey is finished.'} = '';
    $Self->{Translation}->{'Survey Message!'} = '';
    $Self->{Translation}->{'Module not enabled.'} = '';
    $Self->{Translation}->{'This functionality is not enabled, please contact your administrator.'} =
        '';
    $Self->{Translation}->{'Survey Error!'} = '';
    $Self->{Translation}->{'Invalid survey key.'} = '';
    $Self->{Translation}->{'The inserted survey key is invalid, if you followed a link maybe this is obsolete or broken.'} =
        '';
    $Self->{Translation}->{'Survey Vote'} = '';
    $Self->{Translation}->{'Survey Vote Data'} = '';
    $Self->{Translation}->{'You have already answered the survey.'} = '';

    # Perl Module: Kernel/System/Stats/Dynamic/SurveyList.pm
    $Self->{Translation}->{'Survey List'} = '';

    # JS File: Survey.Agent.SurveyEditQuestions
    $Self->{Translation}->{'Do you really want to delete this question? ALL associated data will be LOST!'} =
        '';
    $Self->{Translation}->{'Do you really want to delete this answer?'} = '';

    # SysConfig
    $Self->{Translation}->{'A Survey Module.'} = 'Anketni modul.';
    $Self->{Translation}->{'A module to edit survey questions.'} = 'Modul za uređivanje anketnih pitanja.';
    $Self->{Translation}->{'All parameters for the Survey object in the agent interface.'} =
        'Svi parametri Objekta ankete u interfejsu operatera.';
    $Self->{Translation}->{'Amount of days after sending a survey mail in which no new survey requests are sent to the same customer. Selecting 0 will always send the survey mail.'} =
        'Broj dana posle slanja imejla o anketi za koje istom korisniku neće biti slani novi zahtevi. Ako izaberete 0 imejl o anketi se uvek šalje.';
    $Self->{Translation}->{'Default body for the notification email to customers about new survey.'} =
        'Podrazumevani sadržaj imejla obaveštenja o novoj anketi za korisnike.';
    $Self->{Translation}->{'Default sender for the notification email to customers about new survey.'} =
        'Podrazumevani pošiljaoc imejla obaveštenja o novom istraživanju za korisnike.';
    $Self->{Translation}->{'Default subject for the notification email to customers about new survey.'} =
        'Podrazumevani predmet imejla obaveštenja o novoj anketi za korisnike.';
    $Self->{Translation}->{'Defines an overview module to show the small view of a survey list.'} =
        'Definiše modul pregleda za mali prikaz liste anketa. ';
    $Self->{Translation}->{'Defines groups which have a permission to change survey status. Array is empty by default and agents from all groups can change survey status.'} =
        'Određuje grupe koje imaju dozvolu da menjaju status ankete. Tabela je podrazumevano prazna i operateri iz svih grupa mogu da menjaju status ankete.';
    $Self->{Translation}->{'Defines if survey requests will be only send to real customers.'} =
        'Definiše da li će zahtevi za ankete biti poslati samo pravim klijentima.';
    $Self->{Translation}->{'Defines maximum amount of surveys that get sent to a customer per 30 days. ( 0 means no maximum, all survey requests will be sent).'} =
        'Definiše maksimalni broj anketa koji će biti poslat korisniku tokom 30 dana. (0 znači da nema maksimuma, svi zahtevi će biti poslati).';
    $Self->{Translation}->{'Defines the amount in hours a ticket has to be closed to trigger the sending of a survey, ( 0 means send immediately after close ). Note: delayed survey sending is done by the OTOBO Daemon, prior activation of \'Daemon::SchedulerCronTaskManager::Task###SurveyRequestsSend\' setting.'} =
        'Definiše broj sati od zatvaranja tiketa za pokretanje slanja ankete. (0 znači da se šalje odmah po zatvaranju). Napomena: odlaganje slanja ankete obavlja „OTOBO ” servis pre aktiviranja „Daemon::SchedulerCronTaskManager::Task###SurveyRequestsSend” postavke.';
    $Self->{Translation}->{'Defines the columns for the dropdown list for building send conditions (0 => inactive, 1 => active).'} =
        'Definiše kolone za listu prilikom pravljenja uslova zahteva (0 => isključeno, 1 => uključeno).';
    $Self->{Translation}->{'Defines the default height for Richtext views for SurveyZoom elements.'} =
        'Definiše podrazumevanu visinu okvira za prikaz teksta  za detaljni prikaz elemenata ankete.';
    $Self->{Translation}->{'Defines the groups (rw) which can delete survey stats.'} = 'Definiše grupe (rw) koje mogu da brišu statistike anketa.';
    $Self->{Translation}->{'Defines the maximum height for Richtext views for SurveyZoom elements.'} =
        'Određuje maksimalnu visinu „Richtext” prikaza teksta  za detaljni prikaz elemenata ankete.';
    $Self->{Translation}->{'Defines the shown columns in the survey overview. This option has no effect on the position of the columns.'} =
        'Definiše prikazane kolone u pregledu ankete. Ova opcije nema uticaj na pozicije kolona.';
    $Self->{Translation}->{'Determines if the statistics module may generate survey lists.'} =
        'Određuje da li modul statistika može generisati liste anketa.';
    $Self->{Translation}->{'Edit survey general information.'} = 'Uredi opšte informacije o anketi.';
    $Self->{Translation}->{'Edit survey questions.'} = 'Uredi anketna pitanja.';
    $Self->{Translation}->{'Enable or disable the ShowVoteData screen in the public interface to show data of a specific survey result when the customer tries to answer a survey the second time.'} =
        'Uključi ili isključi prikaz ekrana za glasanje na javnom interfejsu radi prikaza rezultata pojedine ankete kada korisnik pokuša da odgovori na upitnik po drugi put.';
    $Self->{Translation}->{'Enable or disable the send condition check for the service.'} = 'Uključi ili isključi proveru statusa slanja za uslugu.';
    $Self->{Translation}->{'Enable or disable the send condition check for the ticket type.'} =
        'Uključi ili isključi proveru statusa slanja za tip tiketa.';
    $Self->{Translation}->{'Frontend module registration for survey add in the agent interface.'} =
        'Registracija "Frontend" modula za dodavanje ankete u interfejsu operatera.';
    $Self->{Translation}->{'Frontend module registration for survey edit in the agent interface.'} =
        'Registracija "Frontend" modula za izmene ankete u interfejsu operatera.';
    $Self->{Translation}->{'Frontend module registration for survey stats in the agent interface.'} =
        'Registracija "Frontend" modula za statistiku ankete u interfejsu operatera.';
    $Self->{Translation}->{'Frontend module registration for survey zoom in the agent interface.'} =
        'Registracija "Frontend" modula za detaljni prikaz ankete u interfejsu operatera.';
    $Self->{Translation}->{'Frontend module registration for the PublicSurvey object in the public Survey area.'} =
        'Registracija "Frontend" modula za javne anketne objekte ankete u prostoru javnih anketa.';
    $Self->{Translation}->{'If this regex matches, no customer survey will be sent.'} = 'Ako se ovaj izraz poklapa, anketa neće biti poslata korisniku.';
    $Self->{Translation}->{'Limit.'} = 'Ograničenje.';
    $Self->{Translation}->{'Parameters for the pages (in which the surveys are shown) of the small survey overview.'} =
        'Parametri stranica (na kojima su ankete vidljive) na malom prikazu pregleda anketa.';
    $Self->{Translation}->{'Public Survey.'} = 'Javna anketa.';
    $Self->{Translation}->{'Results older than the configured amount of days will be deleted. Note: delete results done by the OTOBO Daemon, prior activation of \'Task###SurveyRequestsDelete\' setting.'} =
        'Rezultati stariji od podešenog broja dana će biti obrisani. Napomena: rezultate briše OTOBO sistemski servis, po aktivaciji podešavanja \'Task###SurveyRequestsDelete\'.';
    $Self->{Translation}->{'Shows a link in the menu to edit a survey in its zoom view of the agent interface.'} =
        'U meniju prikazuje vezu za uređivanje ankete u detaljnom prikazu interfejsa operatera.';
    $Self->{Translation}->{'Shows a link in the menu to edit survey questions in its zoom view of the agent interface.'} =
        'U meniju prikazuje vezu za uređivanje anketnih pitanja u detaljnom prikazu interfejsa operatera.';
    $Self->{Translation}->{'Shows a link in the menu to go back in the survey zoom view of the agent interface.'} =
        'U meniju prikazuje vezu za povratak u detaljni prikaz ankete u interfejsu operatera.';
    $Self->{Translation}->{'Shows a link in the menu to zoom into the survey statistics details in its zoom view of the agent interface.'} =
        'U meniju prikazuje vezu za detaljni prikaz statistike ankete u detaljnom prikazu na interfejsu operatera.';
    $Self->{Translation}->{'Stats Details'} = 'Detalji statistike';
    $Self->{Translation}->{'Survey Add Module.'} = 'Modul za dodavanje ankete.';
    $Self->{Translation}->{'Survey Edit Module.'} = 'Modul za uređivanje ankete.';
    $Self->{Translation}->{'Survey Overview "Small" Limit'} = 'Ograničenje pregleda ankete - „malo”';
    $Self->{Translation}->{'Survey Stats Module.'} = 'Modul za statistiku ankete.';
    $Self->{Translation}->{'Survey Zoom Module.'} = 'Modul za detaljni prikaz ankete.';
    $Self->{Translation}->{'Survey limit per page for Survey Overview "Small".'} = 'Ograničenje ankete po strani za pregled malog formata.';
    $Self->{Translation}->{'Surveys will not be sent to the configured email addresses.'} = 'Anketa neće biti poslata na podešenu imejl adresu.';
    $Self->{Translation}->{'The identifier for a survey, e.g. Survey#, MySurvey#. The default is Survey#.'} =
        'Identifikator za anketu, npr. Survey#, MySurvey#. Podrazumevano je Survey#.';
    $Self->{Translation}->{'Ticket event module to send automatically survey email requests to customers if a ticket is closed.'} =
        'Modul događaja na tiketu za automatsko slanje imejla o istraživanju korisnicima ako je tiket zatvoren.';
    $Self->{Translation}->{'Trigger delete results (including vote data and requests).'} = 'Okida brisanje rezultata (uključujući podatke primljenih glasova i poslatih zahteva).';
    $Self->{Translation}->{'Trigger sending delayed survey requests.'} = 'Okidač odloženog slanja zahteva za anketu.';
    $Self->{Translation}->{'Zoom into statistics details.'} = 'Ulaz u detaljni prikaz statistike.';


    push @{ $Self->{JavaScriptStrings} // [] }, (
    'Do you really want to delete this answer?',
    'Do you really want to delete this question? ALL associated data will be LOST!',
    'Settings',
    'Submit',
    );

}

1;
