# Restore DB from  backup through SSMS
1. Connect to SQL Server, right-click on the "Databases" directory and select "Restore Database...".
1. In the "Source" section, choose "Device".
1. Click on the button (...) next to "Device" and choose "File" as the back up media type.
1. Click on "Add", search for the .bak file and press "OK.
1. Finally, press on "OK" once again.

# Backup DB
1. Connect to SQL Server, expand the "Databases" directory, right-click on the DB to backup,
select "Tasks" and choose "Backup...".
1. Select the backup type (in this case, "Full").
1. On the "Destnation" section, remove previous backup path.
1. Add a new path and name the as "DBname-dateOfBackup.bak" format.

# Restore DB from  backup (through SSMS) beside the actual instance
1. Connect to SQL Server, right-click on the "Databases" directory and select "Restore Database...".
1. In the "Source" section, choose "Device".
1. Click on the button (...) next to "Device" and choose "File" as the back up media type.
1. Click on "Add", search for the .bak file and press "OK.
1. In the "Destination" section, on the "Database" field, name it differently from the
actual instance.
1. Finally, press on "OK" once again.


