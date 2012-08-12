# Educational Data & Account Generation Engine

## Overview

**Educational Data & Account Generation Engine** is a modular set of databases, scripts, queries and a REST api to make it easier for schools to handle account generation on a daily, weekly, or monthly basis. 

### Technologies Used

* [MySQL Database](http://dev.mysql.com/downloads/mysql/)
* [Pentaho Data Integration (Kettle)](http://sourceforge.net/projects/pentaho/files/Data%20Integration/)
* [PHP](http://php.net/downloads.php) (Plus these add-onsw)
	* [Slim Framework](http://www.slimframework.com/code)
* [PowerShell](http://technet.microsoft.com/en-us/library/bb978526.aspx) (Plus these modules)
  * [SQLPSX](http://sqlpsx.codeplex.com/)
  * [Quest AD Cmdlets](http://www.quest.com/powershell/activeroles-server.aspx)

Most of the work is done in native queries and views inside the MySQL database, but PDI will be used to do the SIS connections and also major data moves inside the database.

### Systems Integrated At Launch

Schools have many systems that they need integrated on a daily basis and E.D.A.G.E. should be the core engine behind updating most of them.  At launch, we plan to have the following ready to use.

##### Data Stores
* PowerSchool SIS
* WESPaC (Skyward)
* CSV

Hopefully in the near future we will also be able to support Aspen SIS as well as many other Student & Employee Information systems.

##### External Systems
* Active Directory Accounts
* [Google Apps](http://www.google.com/apps/intl/en/edu/index.html)
* [Moodle](http://moodle.org)
* [Follett Destiny Library System](http://www.follettsoftware.com)
* [MealTime](http://www.mealtimeclm.com)
* [InTouch](http://www.hdbakerpos.com)
* [TeacherDashboard](http://www.hapara.com)
* [Blufish](http://www.blufish.me)
* [TypingMaster](http://www.typingmaster.com/)

Adding support for other systems will come over time.  As the architecture is quite modular, adding support for a new external system should be a fairly simple task.  There will also be a simple RESTful API that will assist in connections to other external systems if you have the programming knowledge available.

#### Contact Information

Initial Contact regarding this project is Kris Hagel - kris@krishagel.com

