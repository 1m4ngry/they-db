Template: man-db/build-database
Type: boolean
Default: true
Description: Should mandb build its database now?
 You do not yet have a database of manual page descriptions. Building one
 may take some time, depending on how many pages you have installed; it
 will happen in the background, possibly slowing down the installation of
 other packages. Do you want this to happen now?
 .
 If you do not build the database now, it will be built the next time
 /etc/cron.weekly/mandb runs, or you can do it yourself using 'mandb -c' as
 user 'man'. In the meantime, the 'whatis' and 'apropos' commands will not
 be able to display any output.
Description-ru: Построить базу данных mandb сейчас?
 У  вас  пока  нет базы данных описаний страниц руководств. Ее создание
 может   занять   некоторое   время,   в   зависимости   от  количества
 установленных страниц руководств; создание базы производится в фоновом
 процессе,  что  может  замедлить  установку остальных пакетов. Вас это
 устраивает? 
 .
 Если  вы  не построите базу даных сейчас, то она будет построена потом
 при  запуске  /etc/cron.weekly/mandb,  или вы можете запустить команду
 'mandb  -c'  от  имени  пользователя  'man'.  До этого момента команды
 'whatis' и 'apropos' работать не смогут. 

Template: man-db/install-setuid
Type: boolean
Default: false
Description: Do you want man and mandb to be installed setuid man?
 The man and mandb program can be installed with the set-user-id bit set,
 so that they will run with the permissions of the 'man' user. This allows
 ordinary users to benefit from the caching of preformatted manual pages
 ('cat pages'), and means that the database of man page descriptions is
 automatically kept up to date by people reading man pages. Storing cat
 pages, in particular, may aid performance on slower machines.
 .
 Cached man pages only work if you are using a "normal"-width terminal (66
 to 80 characters wide). This is to avoid one user causing cat pages to be
 saved at widths that would be inconvenient for other users. In a future
 release this will be configurable. Until then, if you use a wide terminal,
 you can force man pages to be formatted to 80 characters anyway by setting
 MANWIDTH=80.
 .
 Enabling this feature may be a security risk, so it is disabled by
 default. If in doubt, I suggest you leave it disabled.
Description-ru: Вы хотите установить setuid man для man и mandb?
 Программы  man  и  mandb  могут быть установлены с установленным битом
 set-user-id,  чтобы  они запускались с правами пользователя 'man'. Это
 позволит     обычным    пользователям    пользоваться    кешированными
 отформатированными  страницами  руководств  ('cat pages'), и означает,
 что  база  данных  описаний  страниц  руководств  будет  автоматически
 обновляться людьми, просматривающими страницы руководств. Хранение cat
 страниц  снижает  требования  к производительности, что особенно важно
 для старых машин. 
 .
 Кешированные  страницы  руководств работают только если вы используете
 терминал  с  "обычной"  нириной экрана (от 66 до 80 симолов в строке).
 Это  избавляет  от сохранения в кеше страниц одного из пользователей с
 форматом,  несовместимым  с  другими пользователями. В будущем выпуске
 это будет настраиваться. Сейчас, если вы используете широкий терминал,
 то можете принудительно форматировать страницы по 80 символов в строке
 установкой MANWIDTH=80. 
 .
 Включение  этой  возможности является угрозой бещопасности, поэтому по
 умолчанию  она  выключена. Если не знаете, что делать, то оставьте как
 есть. 

Template: man-db/rebuild-database
Type: boolean
Default: true
Description: Should mandb rebuild its database now?
 This version of man-db is incompatible with your existing database of
 manual page descriptions, so that database needs to be rebuilt. This may
 take some time, depending on how many pages you have installed; it will
 happen in the background, possibly slowing down the installation of other
 packages. Do you want this to happen now?
 .
 If you do not rebuild the database now, it will be rebuilt the next time
 /etc/cron.weekly/mandb runs, or you can do it yourself using 'mandb -c' as
 user 'man'. In the meantime, the 'whatis' and 'apropos' commands will not
 be able to display any output.
 .
 Incompatible changes like this should happen rarely.
Description-ru: Перестроить базу данных mandb сейчас?
 Эта версия man-db несовместима с имеющейся у вас базой данных описаний
 страниц  руководств,  поэтому базу данных нужно перестроить. Это может
 занять  некоторое  время,  в зависимости от количества установленных у
 вас  страниц; создание базы производится в фоновом процессе, что может
 замедлить установку остальных пакетов. Вас это устраивает? 
 .
 Если  вы  не построите базу даных сейчас, то она будет построена потом
 при  запуске  /etc/cron.weekly/mandb,  или вы можете запустить команду
 'mandb  -c'  от  имени  пользователя  'man'.  До этого момента команды
 'whatis' и 'apropos' работать не смогут. 
 .
 Несовместимые изменения наподобие этого случаются редко.

