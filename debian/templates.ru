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
Description-ru: ��������� ���� ������ mandb ������?
 � ��� ���� ��� ���� ������ �������� ������� ����������. �� �������� �����
 ������ ��������� �����, � ����������� �� ���������� ������������� �������
 ����������; �������� ���� ������������ � ������� ��������, ��� �����
 ��������� ��������� ��������� �������. ��� ��� ����������?

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
 Enabling this feature may be a security risk, so it is disabled by
 default. If in doubt, I suggest you leave it disabled.
Description-ru: �� ������ ���������� setuid man ��� man � mandb?
 ��������� man � mandb ����� ���� ����������� � ������������� ����� 
 set-user-id, ����� ��� ����������� � ������� ������������ 'man'. ���
 �������� ������� ������������� ������������ �������������
 ������������������ ���������� ���������� ('cat pages'), � ��������, ���
 ���� ������ �������� ������� ���������� ����� ������������� �����������
 ������, ���������������� �������� ����������. �������� cat �������
 ������� ���������� � ������������������, ��� �������� ����� ��� ������
 �����.

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
Description-ru: ����������� ���� ������ mandb ������?
 ��� ������ man-db ������������ � ��������� � ��� ����� ������ ��������
 ������� ����������, ������� ���� ������ ����� �����������. ��� �����
 ������ ��������� �����, � ����������� �� ���������� ������������� � ���
 �������; �������� ���� ������������ � ������� ��������, ��� �����
 ��������� ��������� ��������� �������. ��� ��� ����������?
 .
 ���� �� ������ �� ����������� ���� ������, �� ��� ����� ����������� ���
 ������� /etc/cron.weekly/mandb, ��� �� �� ���� ������ ��� �������, ��������
 ������� 'mandb -c' �� ������������ 'man'. ��� ����������� ���� �������
 'whatis' � 'apropos' �� ����� ����������� ���������.