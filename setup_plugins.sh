#!/bin/sh

unzip AttachDocumentsforViewers-master.zip
unzip AutoSubtasks-master.zip
unzip Bak2topbotm-master.zip
unzip Group_assign-master.zip
unzip HighlightCodeSyntax-master.zip
unzip KanboardSearchPlugin-master.zip
unzip MarkdownPlus-master.zip
unzip SendEmailCreator-master.zip
unzip Subtaskdate-master.zip
unzip kanboard-InstantActions-master.zip
unzip kanboard-add-time-interval-plugin-master.zip
unzip kanboard-bigboard-master.zip
unzip kanboard-milestone-plugin-master.zip
unzip kanboard-plugin-wiki-master.zip
unzip kanboard_plugin_relationgraph-master.zip
unzip plugin-calendar-master.zip
unzip plugin-chat-master.zip
unzip plugin-gantt-master.zip
unzip plugin-task-board-date-master.zip

mv AttachDocumentsforViewers-master         AttachDocumentsforViewers
mv Subtaskdate-master                       Subtaskdate
mv plugin-chat-master                       Chat
mv KanboardSearchPlugin-master              KanboardSearchPlugin
mv SendEmailCreator-master                  SendEmailCreator
mv MarkdownPlus-master                      MarkdownPlus
mv plugin-task-board-date-master            TaskBoardDate
mv plugin-gantt-master                      Gantt
mv kanboard-bigboard-master                 Bigboard
mv kanboard-milestone-plugin-master         Milestone
mv Bak2topbotm-master                       Bak2topbotm
mv kanboard_plugin_relationgraph-master     Relationgraph
mv kanboard-InstantActions-master           Instantactions
mv kanboard-plugin-wiki-master              Wiki
mv AutoSubtasks-master                      AutoSubtasks
mv kanboard-add-time-interval-plugin-master TaskIntervalButton
mv Group_assign-master                      Group_assign
mv plugin-calendar-master                   Calendar
mv HighlightCodeSyntax-master               HighlightCodeSyntax

cp translations.php ./plugins/KanboardSearchPlugin/Locale/ja_JP/

#unzip MetaMagik-master.zip
#mv MetaMagik-master                         MetaMagik
#unzip kanboard_plugin_metadata-master.zip
#mv kanboard_plugin_metadata-master          Metadata
#unzip MinimizeSidebar-master.zip
#mv MinimizeSidebar-master                   MinimizeSidebar
#unzip OfflineKanboardPlugin-master.zip
#mv OfflineKanboardPlugin-master             OfflineKanboardPlugin
#unzip kanboard-plugin-voting-master.zip
#mv kanboard-plugin-voting-master            Voting
#unzip kanboard-backlog-master.zip
#mv kanboard-backlog-master                  Backlog