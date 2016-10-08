What is ubertask optimization?

`not answered`
`Answered Oct8 - Enable the execution of small jobs sequientially inside a process. `

Where in CM is the Kerberos Security Realm value displayed?

HOME --> Administration --> Security --> TAB Kerberos Credentials  (If it is already configured)
HOME --> Administration --> Security --> TAB Kerberos Credentials --> Configuration -->  Kerberos Security Realm
  http://server:7180/cmf/settings?q=security_realm#filterfreeText=security_realm

Which CDH service(s) host a property for enabling Kerberos authentication?

* HBASE
* HIVE
* HUE
* IMPALA
* SEARCH
* HDFS

How do you upgrade the CM agents?

1. Using Upgrade wizard in the admin console
2. manually install the Cloudera Manager Agent packages.

Give the tsquery statement used to chart Hue's CPU utilization?

select cpu_system_rate + cpu_user_rate where category=ROLE and serviceName=$SERVICENAME

Name all the roles that make up the Hive service

* Full Administrator
* Operator
* Configurator

`These are Cloudera Manager roles. The Hive roles are the HiveServer2, Metastore, Gateway, and WebHCatalog`


What steps must be compelted before integrating Cloudera Manager with Kerberos?

Install Kerberos server
Install Kerberos client in each node.
Configure the server :
 * Define REALM
 * Modify settings

Configure client:
	* Modify Settings

Create DataBase
Create Principal User
Modify ACL
Add password policy

Start Kerberos



