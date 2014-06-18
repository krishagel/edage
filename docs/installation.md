## Installation Documentation

### Prerequisite Installations

* [MySQL Database version 5.5+](http://dev.mysql.com/downloads/mysql/)
* [Pentaho Data Integration (Kettle) version 4.2+](http://sourceforge.net/projects/pentaho/files/Data%20Integration/)

	These applications need to be setup and configured before we are able to perform any further tasks.  That is outside the scope of this document, but more information on MySQL installation can be found [here](http://dev.mysql.com/doc/refman/5.1/en/installing.html), and more information on PDI can be found [here](http://wiki.pentaho.com/display/EAI/01.+Installing+Kettle).
	
### Basic Installation Steps

1. Git Clone the EDAGE repository:
	* `git clone https://github.com/krishagel/edage.git`
2. Install edage database into MySQL server:
	* The _extras/db_scripts_ folder holds a sql script that when run will install the edage database.
3. Install edage_logs database into MySQL server:
	* The _extras/db_scripts_ folder holds a sql script that when run will install the edage_logs database.
4. Setup etl module to pull in SIS data:
	* There are currently two etl modules built, one for PowerSchool and one for WESPaC (Washington State version of Skyward).  Choose the one that fits your setup and see the associated instructions for the setup of that module.
5. 