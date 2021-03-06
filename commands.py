#------------------------------------------------------------------------------------------------------------------------------------------------
#--------------------
#MYSQL ADMINISTRATION
#--------------------

#	https://www.tecmint.com/mysqladmin-commands-for-database-administration-in-linux/

#	Set the root user's password:
mysqladmin -u root password ########
#	where 	######## is the new password
	
#	Change the root user's password

mysqladmin -u root -p******** password '########'
#	where	******** is the current password
#			######## is the new password
			
mysqladmin -u root -p password ########
#	where	******** is the current password
#			######## is the new password
		
#	You will have to enter your current password, when prompted, in order to change the password.
			
#Check if MySQL is running:
mysqladmin -u root -p ping

#Check the version of MySQL:
mysqladmin -u root -p version

#Find out the current status of MySQL server:
mysqladmin -u root -p status

#Check the status of all MySQL server variables and values:
mysqladmin -u root -p extended-status

#See all MySQL server variables and their values:
mysqladmin -u root -p variables

#Check all running processes of MySQL server:
mysqladmin -u root -p processlist

#Kill a sleeping MySQL client process:
mysqladmin -u root -p processlist
......
mysqladmin -u root -p kill *,*,......
#	where 	*,*,...... is/are the PID of the target process as revealed in the previous command
	
#Running multiple MySQL commands together:
mysqladmin -u root -p ### ### ### ......
#	where 	### is a command.
	
#Connecting to a remote MySQL server:
mysqladmin -h ###.###.###.### -u root -p
#	where 	###.###.###.### is the IP of the host server.
	
#Running a command on a remote MySQL server:
mysqladmin -h ###.###.###.### -u root -p ******
#	where 	###.###.###.### is the IP of the host server
#			****** is the command to be run/executed.
			
#Starting/Stopping MySQL replication on a slave server:
mysqladmin -u root -p start-slave
mysqladmin -u root -p stop-slave
	
#Store MySQL server debug information to logs:
mysqladmin -u root -p debug

#----------------
#DATABASE RELATED
#----------------

#Create a new database:
mysqladmin -u root -p create ########
#	where 	######## is the name of the DB
	
#At a time, you can create only one database, not more.
	
#Verify that the database has been created:
mysql -u root -p
......
mysql>	show databases;

#Drop a database:
mysqladmin -u root -p drop ########
#	where 	######## is the name of the DB
	
#To reload/refresh MySQL privileges:
mysqladmin -u root -p reload
mysqladmin -u root -p refresh

#--------------
#FLUSH COMMANDS
#--------------

 mysqladmin -u root -p flush-hosts
#	Flushes all host information from host cache.
 mysqladmin -u root -p flush-tables
#	Flushes all tables.
 mysqladmin -u root -p flush-threads
#	Flushes all threads cache.
 mysqladmin -u root -p flush-logs
#	Flushes all information logs.
 mysqladmin -u root -p flush-privileges
#	Reloads the grant tables (same as reload).
 mysqladmin -u root -p flush-status
#	Clears all the status variables.

#----
#HELP
#----
mysqladmin --help

#------------------------------------------------------------------------------------------------------------------------------------------------

mysqlshow -u root -p
root123
#	Lists the databases currently hosted in MySQL server.
	
mysqlshow -u root -p --count mysql
root123
#	Lists the tables hosted in the database "mysql"
	
