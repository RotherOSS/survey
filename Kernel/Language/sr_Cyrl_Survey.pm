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

package Kernel::Language::sr_Cyrl_Survey;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # Template: AgentSurveyAdd
    $Self->{Translation}->{'Create New Survey'}                                     = '';
    $Self->{Translation}->{'All fields marked with an asterisk (*) are mandatory.'} = '';
    $Self->{Translation}->{'Introduction'}                                          = '';
    $Self->{Translation}->{'Survey Introduction'}                                   = '';
    $Self->{Translation}->{'Notification Body'}                                     = '';
    $Self->{Translation}->{'Internal Description'}                                  = '';
    $Self->{Translation}->{'Customer conditions'}                                   = '';
    $Self->{Translation}->{'Please choose a Customer property to add a condition.'} = '';
    $Self->{Translation}->{'Public survey key'}                                     = '';
    $Self->{Translation}->{'Example survey'}                                        = '';

    # Template: AgentSurveyEdit
    $Self->{Translation}->{'Edit General Info'} = '';

    # Template: AgentSurveyEditQuestions
    $Self->{Translation}->{'Edit Questions'}                      = '';
    $Self->{Translation}->{'You are here'}                        = '';
    $Self->{Translation}->{'Survey Questions'}                    = '';
    $Self->{Translation}->{'Add Question'}                        = '';
    $Self->{Translation}->{'Type the question'}                   = '';
    $Self->{Translation}->{'Answer required'}                     = '';
    $Self->{Translation}->{'No questions saved for this survey.'} = '';
    $Self->{Translation}->{'Question'}                            = '';
    $Self->{Translation}->{'Answer Required'}                     = '';
    $Self->{Translation}->{'When you finish to edit the survey questions just close this screen.'} =
        '';
    $Self->{Translation}->{'Close this window'}                   = '';
    $Self->{Translation}->{'Edit Question'}                       = '';
    $Self->{Translation}->{'go back to questions'}                = '';
    $Self->{Translation}->{'Question:'}                           = '';
    $Self->{Translation}->{'Possible Answers For'}                = '';
    $Self->{Translation}->{'Add Answer'}                          = '';
    $Self->{Translation}->{'No answers saved for this question.'} = '';
    $Self->{Translation}->{'This doesn\'t have several answers, a textarea will be displayed.'} =
        '';
    $Self->{Translation}->{'Edit Answer'}              = '';
    $Self->{Translation}->{'go back to edit question'} = '';
    $Self->{Translation}->{'Answer:'}                  = '';

    # Template: AgentSurveyOverviewNavBar
    $Self->{Translation}->{'Survey overview options'} = '';
    $Self->{Translation}->{
        'Searches in the attributes Number, Title, Introduction, Description, NotificationSender, NotificationSubject and NotificationBody, overriding other attributes with the same name.'
        }
        =
        '';
    $Self->{Translation}->{'Survey Create Time'}           = '';
    $Self->{Translation}->{'No restriction'}               = '';
    $Self->{Translation}->{'Only surveys created between'} = '';
    $Self->{Translation}->{'Max. shown surveys per page'}  = '';

    # Template: AgentSurveyOverviewSmall
    $Self->{Translation}->{'Notification Sender'}  = '';
    $Self->{Translation}->{'Notification Subject'} = '';
    $Self->{Translation}->{'Changed By'}           = '';

    # Template: AgentSurveyStats
    $Self->{Translation}->{'Stats Overview of'}         = '';
    $Self->{Translation}->{'Requests Table'}            = '';
    $Self->{Translation}->{'Select all requests'}       = '';
    $Self->{Translation}->{'Send Time'}                 = '';
    $Self->{Translation}->{'Vote Time'}                 = '';
    $Self->{Translation}->{'Select this request'}       = '';
    $Self->{Translation}->{'See Details'}               = '';
    $Self->{Translation}->{'Delete stats'}              = '';
    $Self->{Translation}->{'Survey Stat Details'}       = '';
    $Self->{Translation}->{'go back to stats overview'} = '';
    $Self->{Translation}->{'Previous vote'}             = '';
    $Self->{Translation}->{'Next vote'}                 = '';

    # Template: AgentSurveyZoom
    $Self->{Translation}->{'Survey Information'}   = '';
    $Self->{Translation}->{'Sent requests'}        = '';
    $Self->{Translation}->{'Received surveys'}     = '';
    $Self->{Translation}->{'Survey Details'}       = '';
    $Self->{Translation}->{'Ticket Services'}      = '';
    $Self->{Translation}->{'Survey Results Graph'} = '';
    $Self->{Translation}->{'No stat results.'}     = '';

    # Template: PublicSurvey
    $Self->{Translation}->{'Survey'}                        = '';
    $Self->{Translation}->{'Please answer these questions'} = '';
    $Self->{Translation}->{'Show my answers'}               = '';
    $Self->{Translation}->{'These are your answers'}        = '';
    $Self->{Translation}->{'Survey Title'}                  = '';

    # Perl Module: Kernel/Modules/AgentSurveyAdd.pm
    $Self->{Translation}->{'Add New Survey'} = '';

    # Perl Module: Kernel/Modules/AgentSurveyEdit.pm
    $Self->{Translation}->{'You have no permission for this survey!'} = '';
    $Self->{Translation}->{'No SurveyID is given!'}                   = '';
    $Self->{Translation}->{'Survey Edit'}                             = '';

    # Perl Module: Kernel/Modules/AgentSurveyEditQuestions.pm
    $Self->{Translation}->{'You have no permission for this survey or question!'}         = '';
    $Self->{Translation}->{'You have no permission for this survey, question or answer!'} = '';
    $Self->{Translation}->{'Survey Edit Questions'}                                       = '';
    $Self->{Translation}->{'Yes/No'}                                                      = '';
    $Self->{Translation}->{'Radio (List)'}                                                = '';
    $Self->{Translation}->{'Checkbox (List)'}                                             = '';
    $Self->{Translation}->{'Net Promoter Score'}                                          = '';
    $Self->{Translation}->{'Question Type'}                                               = '';
    $Self->{Translation}->{'Complete'}                                                    = '';
    $Self->{Translation}->{'Incomplete'}                                                  = '';
    $Self->{Translation}->{'Question Edit'}                                               = '';
    $Self->{Translation}->{'Answer Edit'}                                                 = '';

    # Perl Module: Kernel/Modules/AgentSurveyStats.pm
    $Self->{Translation}->{'Stats Overview'}                                          = '';
    $Self->{Translation}->{'You have no permission for this survey or stats detail!'} = '';
    $Self->{Translation}->{'Stats Detail'}                                            = '';

    # Perl Module: Kernel/Modules/AgentSurveyZoom.pm
    $Self->{Translation}->{'Can\'t set new status! No questions defined.'} = '';
    $Self->{Translation}->{'Can\'t set new status! Questions incomplete.'} = '';
    $Self->{Translation}->{'Status changed.'}                              = '';
    $Self->{Translation}->{'- No queue selected -'}                        = '';
    $Self->{Translation}->{'- No ticket type selected -'}                  = '';
    $Self->{Translation}->{'- No ticket service selected -'}               = '';
    $Self->{Translation}->{'- Change Status -'}                            = '';
    $Self->{Translation}->{'Master'}                                       = '';
    $Self->{Translation}->{'Invalid'}                                      = '';
    $Self->{Translation}->{'New Status'}                                   = '';
    $Self->{Translation}->{'Survey Description'}                           = '';
    $Self->{Translation}->{'answered'}                                     = '';
    $Self->{Translation}->{'not answered'}                                 = '';

    # Perl Module: Kernel/Modules/PublicSurvey.pm
    $Self->{Translation}->{'Thank you for your feedback.'} = '';
    $Self->{Translation}->{'The survey is finished.'}      = '';
    $Self->{Translation}->{'Survey Message!'}              = '';
    $Self->{Translation}->{'Module not enabled.'}          = '';
    $Self->{Translation}->{'This functionality is not enabled, please contact your administrator.'} =
        '';
    $Self->{Translation}->{'Survey Error!'}       = '';
    $Self->{Translation}->{'Invalid survey key.'} = '';
    $Self->{Translation}->{'The inserted survey key is invalid, if you followed a link maybe this is obsolete or broken.'} =
        '';
    $Self->{Translation}->{'Survey Vote'}                           = '';
    $Self->{Translation}->{'Survey Vote Data'}                      = '';
    $Self->{Translation}->{'You have already answered the survey.'} = '';

    # Perl Module: Kernel/System/Stats/Dynamic/SurveyList.pm
    $Self->{Translation}->{'Survey List'} = '';

    # JS File: Survey.Agent.SurveyEditQuestions
    $Self->{Translation}->{'Do you really want to delete this question? ALL associated data will be LOST!'} =
        '';
    $Self->{Translation}->{'Do you really want to delete this answer?'} = '';

    # SysConfig
    $Self->{Translation}->{'A Survey Module.'}                   = 'Анкетни модул.';
    $Self->{Translation}->{'A module to edit survey questions.'} = 'Модул за уређивање анкетних питања.';
    $Self->{Translation}->{'All parameters for the Survey object in the agent interface.'} =
        'Сви параметри Објекта анкете у интерфејсу оператера.';
    $Self->{Translation}->{
        'Amount of days after sending a survey mail in which no new survey requests are sent to the same customer. Selecting 0 will always send the survey mail.'} =
        'Број дана после слања имејла о анкети за које истом кориснику неће бити слани нови захтеви. Ако изаберете 0 имејл о анкети се увек шаље.';
    $Self->{Translation}->{'Default body for the notification email to customers about new survey.'} =
        'Подразумевани садржај имејла обавештења о новој анкети за кориснике.';
    $Self->{Translation}->{'Default sender for the notification email to customers about new survey.'} =
        'Подразумевани пошиљаоц имејла обавештења о новом истраживању за кориснике.';
    $Self->{Translation}->{'Default subject for the notification email to customers about new survey.'} =
        'Подразумевани предмет имејла обавештења о новој анкети за кориснике.';
    $Self->{Translation}->{'Defines an overview module to show the small view of a survey list.'} =
        'Дефинише модул прегледа за мали приказ листе анкета. ';
    $Self->{Translation}
        ->{'Defines groups which have a permission to change survey status. Array is empty by default and agents from all groups can change survey status.'} =
        'Одређује групе које имају дозволу да мењају статус анкете. Табела је подразумевано празна и оператери из свих група могу да мењају статус анкете.';
    $Self->{Translation}->{'Defines if survey requests will be only send to real customers.'} =
        'Дефинише да ли ће захтеви за анкете бити послати само правим клијентима.';
    $Self->{Translation}->{'Defines maximum amount of surveys that get sent to a customer per 30 days. ( 0 means no maximum, all survey requests will be sent).'} =
        'Дефинише максимални број анкета који ће бити послат кориснику током 30 дана. (0 значи да нема максимума, сви захтеви ће бити послати).';
    $Self->{Translation}->{
        'Defines the amount in hours a ticket has to be closed to trigger the sending of a survey, ( 0 means send immediately after close ). Note: delayed survey sending is done by the OTOBO Daemon, prior activation of \'Daemon::SchedulerCronTaskManager::Task###SurveyRequestsSend\' setting.'
        }
        =
        'Дефинише број сати од затварања тикета за покретање слања анкете. (0 значи да се шаље одмах по затварању). Напомена: одлагање слања анкете обавља „OTOBO ” сервис пре активирања „Daemon::SchedulerCronTaskManager::Task###SurveyRequestsSend” поставке.';
    $Self->{Translation}->{'Defines the columns for the dropdown list for building send conditions (0 => inactive, 1 => active).'} =
        'Дефинише колоне за листу приликом прављења услова захтева (0 => искључено, 1 => укључено).';
    $Self->{Translation}->{'Defines the default height for Richtext views for SurveyZoom elements.'} =
        'Дефинише подразумевану висину оквира за приказ текста  за детаљни приказ елемената анкете.';
    $Self->{Translation}->{'Defines the groups (rw) which can delete survey stats.'}
        = 'Дефинише групе (rw) које могу да бришу статистике анкета.';
    $Self->{Translation}->{'Defines the maximum height for Richtext views for SurveyZoom elements.'} =
        'Одређује максималну висину „Richtext” приказа текста  за детаљни приказ елемената анкете.';
    $Self->{Translation}->{'Defines the shown columns in the survey overview. This option has no effect on the position of the columns.'} =
        'Дефинише приказане колоне у прегледу анкете. Ова опције нема утицај на позиције колона.';
    $Self->{Translation}->{'Determines if the statistics module may generate survey lists.'} =
        'Одређује да ли модул статистика може генерисати листе анкета.';
    $Self->{Translation}->{'Edit survey general information.'} = 'Уреди опште информације о анкети.';
    $Self->{Translation}->{'Edit survey questions.'}           = 'Уреди анкетна питања.';
    $Self->{Translation}->{
        'Enable or disable the ShowVoteData screen in the public interface to show data of a specific survey result when the customer tries to answer a survey the second time.'
        }
        =
        'Укључи или искључи приказ екрана за гласање на јавном интерфејсу ради приказа резултата поједине анкете када корисник покуша да одговори на упитник по други пут.';
    $Self->{Translation}->{'Enable or disable the send condition check for the service.'}
        = 'Укључи или искључи проверу статуса слања за услугу.';
    $Self->{Translation}->{'Enable or disable the send condition check for the ticket type.'} =
        'Укључи или искључи проверу статуса слања за тип тикета.';
    $Self->{Translation}->{'Frontend module registration for survey add in the agent interface.'} =
        'Регистрација "Frontend" модула за додавање анкете у интерфејсу оператера.';
    $Self->{Translation}->{'Frontend module registration for survey edit in the agent interface.'} =
        'Регистрација "Frontend" модула за измене анкете у интерфејсу оператера.';
    $Self->{Translation}->{'Frontend module registration for survey stats in the agent interface.'} =
        'Регистрација "Frontend" модула за статистику анкете у интерфејсу оператера.';
    $Self->{Translation}->{'Frontend module registration for survey zoom in the agent interface.'} =
        'Регистрација "Frontend" модула за детаљни приказ анкете у интерфејсу оператера.';
    $Self->{Translation}->{'Frontend module registration for the PublicSurvey object in the public Survey area.'} =
        'Регистрација "Frontend" модула за јавне анкетне објекте анкете у простору јавних анкета.';
    $Self->{Translation}->{'If this regex matches, no customer survey will be sent.'}
        = 'Ако се овај израз поклапа, анкета неће бити послата кориснику.';
    $Self->{Translation}->{'Limit.'} = 'Ограничење.';
    $Self->{Translation}->{'Parameters for the pages (in which the surveys are shown) of the small survey overview.'} =
        'Параметри страница (на којима су анкете видљиве) на малом приказу прегледа анкета.';
    $Self->{Translation}->{'Public Survey.'} = 'Јавна анкета.';
    $Self->{Translation}->{
        'Results older than the configured amount of days will be deleted. Note: delete results done by the OTOBO Daemon, prior activation of \'Task###SurveyRequestsDelete\' setting.'
        }
        =
        'Резултати старији од подешеног броја дана ће бити обрисани. Напомена: резултате брише OTOBO системски сервис, по активацији подешавања \'Task###SurveyRequestsDelete\'.';
    $Self->{Translation}->{'Shows a link in the menu to edit a survey in its zoom view of the agent interface.'} =
        'У менију приказује везу за уређивање анкете у детаљном приказу интерфејса оператера.';
    $Self->{Translation}->{'Shows a link in the menu to edit survey questions in its zoom view of the agent interface.'} =
        'У менију приказује везу за уређивање анкетних питања у детаљном приказу интерфејса оператера.';
    $Self->{Translation}->{'Shows a link in the menu to go back in the survey zoom view of the agent interface.'} =
        'У менију приказује везу за повратак у детаљни приказ анкете у интерфејсу оператера.';
    $Self->{Translation}->{'Shows a link in the menu to zoom into the survey statistics details in its zoom view of the agent interface.'} =
        'У менију приказује везу за детаљни приказ статистике анкете у детаљном приказу на интерфејсу оператера.';
    $Self->{Translation}->{'Stats Details'}                 = 'Детаљи статистике';
    $Self->{Translation}->{'Survey Add Module.'}            = 'Модул за додавање анкете.';
    $Self->{Translation}->{'Survey Edit Module.'}           = 'Модул за уређивање анкете.';
    $Self->{Translation}->{'Survey Overview "Small" Limit'} = 'Ограничење прегледа анкете - „мало”';
    $Self->{Translation}->{'Survey Stats Module.'}          = 'Модул за статистику анкете.';
    $Self->{Translation}->{'Survey Zoom Module.'}           = 'Модул за детаљни приказ анкете.';
    $Self->{Translation}->{'Survey limit per page for Survey Overview "Small".'}
        = 'Ограничење анкете по страни за преглед малог формата.';
    $Self->{Translation}->{'Surveys will not be sent to the configured email addresses.'}
        = 'Анкета неће бити послата на подешену имејл адресу.';
    $Self->{Translation}->{'The identifier for a survey, e.g. Survey#, MySurvey#. The default is Survey#.'} =
        'Идентификатор за анкету, нпр. Survey#, MySurvey#. Подразумевано је Survey#.';
    $Self->{Translation}->{'Ticket event module to send automatically survey email requests to customers if a ticket is closed.'} =
        'Модул догађаја на тикету за аутоматско слање имејла о истраживању корисницима ако је тикет затворен.';
    $Self->{Translation}->{'Trigger delete results (including vote data and requests).'}
        = 'Окида брисање резултата (укључујући податке примљених гласова и послатих захтева).';
    $Self->{Translation}->{'Trigger sending delayed survey requests.'} = 'Окидач одложеног слања захтева за анкету.';
    $Self->{Translation}->{'Zoom into statistics details.'}            = 'Улаз у детаљни приказ статистике.';

    push @{ $Self->{JavaScriptStrings} // [] }, (
        'Do you really want to delete this answer?',
        'Do you really want to delete this question? ALL associated data will be LOST!',
        'Settings',
        'Submit',
    );

}

1;
