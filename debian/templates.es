Template: man-db/install-setuid
Type: boolean
Default: false
Description: Do you want man and mandb to be installed setuid man?
 The man and mandb program can be installed with the set-user-id bit set, so
 that they will run with the permissions of the 'man' user. This allows
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
 Enabling this feature may be a security risk, so it is disabled by default.
 If in doubt, I suggest you leave it disabled.
Description-es: �Quiere que man y man-db se instalen setuid man?
 Los programas man y mandb se pueden instalar setuid man, de forma que
 se ejecutar�n con los permisos del usuario 'man'. Esto permite a los
 usuarios normales beneficiarse del cach� de las p�ginas de manual
 preformateadas ('cat pages'), y significa que la base de datos de las
 descripciones de p�ginas de manual se mantiene actualizada gracias a la
 lectura de p�ginas de manual por los usuarios. Este sistema puede
 ayudar particularmente a mejorar el rendimiento en m�quinas lentas.
 .
 El cach� de las p�ginas de manual preformateadas s�lo funciona si est�
 usando un terminal de anchura "normal" (entre 66 y 80 caracteres de ancho).
 La raz�n de ser de este comportamiento es evitar que alg�n usuario guarde
 p�ginas de manual preformateadas con anchuras que puedan resultar molestas
 para otros usuarios. Las versiones futuras de este paquete ser�n
 configurables; hasta entonces, si usa un terminal ancho, puede obligar a
 formatear a 80 caracteres estableciendo MANWIDTH=80 como variable de
 entorno.
 .
 Esta pr�ctica puede representar un riesgo de seguridad, por lo que est�
 deshabilitada por defecto. Si tiene dudas, le sugiero que la deje sin
 habilitar.

Template: man-db/build-database
Type: boolean
Default: true
Description: Should mandb build its database now?
 You do not yet have a database of manual page descriptions. Building one
 may take some time, depending on how many pages you have installed; it will
 happen in the background, possibly slowing down the installation of other
 packages. Do you want this to happen now?
 .
 If you do not build the database now, it will be built the next time
 /etc/cron.weekly/mandb runs, or you can do it yourself using 'mandb -c' as
 user 'man'. In the meantime, the 'whatis' and 'apropos' commands will not
 be able to display any output.
Description-es: �Quiere que mandb construya su base de datos ahora?
 Todav�a no tiene una base de datos de descripciones de p�ginas de
 manual. Construir una puede llevar alg�n tiempo, dependiendo de cu�ntas
 p�ginas de manual haya instalado; se realizar� en segundo plano, por lo
 que es posible que haga m�s lenta la instalaci�n de otros paquetes.
 �Quiere hacerlo ahora?
 .
 Si no construye la base de datos ahora, se har� la pr�xima vez que se
 ejecute /etc/cron.weekly/mandb, o puede hacerlo manualmente usando
 �mandb -c� como usuario man. Hasta entonces, las �rdenes �whatis� y
 �apropos� no podr�n mostrar nada.

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
Description-es: �Quiere que mandb reconstruya su base de datos ahora?
 Esta versi�n de man-db es incompatible con la base de datos de
 descripciones de p�ginas de manual existente en su sistema, por lo que
 se debe rehacer. Puede llevar alg�n tiempo, dependiendo de cu�ntas
 p�ginas de manual haya instalado; se realizar� en segundo plano, por lo
 que es posible que se haga m�s lenta la instalaci�n de otros paquetes.
 �Quiere hacerlo ahora?
 .
 Si no reconstruye la base de datos ahora, se har� la pr�xima vez que se
 ejecute /etc/cron.weekly/mandb, o puede hacerlo manualmente usando
 �mandb -c� como usuario man. Hasta entonces, las �rdenes �whatis� y
 �apropos� no podr�n mostrar nada.
 .
 Los cambios incompatibles como �ste s�lo ocurren muy espor�dicamente.
