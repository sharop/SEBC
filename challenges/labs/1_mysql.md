mysql  Ver 14.14 Distrib 5.5.52, for Linux (x86_64) using readline 5.1



```
mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| hive               |
| hue                |
| mysql              |
| oozie              |
| performance_schema |
| rman               |
| scm                |
| sentry             |
+--------------------+
9 rows in set (0.00 sec)

```


Showing Grants

```


mysql> select * from information_schema.user_privileges;
+-------------------------+---------------+-------------------------+--------------+
| GRANTEE                 | TABLE_CATALOG | PRIVILEGE_TYPE          | IS_GRANTABLE |
+-------------------------+---------------+-------------------------+--------------+
| 'root'@'localhost'      | def           | SELECT                  | YES          |
| 'root'@'localhost'      | def           | INSERT                  | YES          |
| 'root'@'localhost'      | def           | UPDATE                  | YES          |
| 'root'@'localhost'      | def           | DELETE                  | YES          |
| 'root'@'localhost'      | def           | CREATE                  | YES          |
| 'root'@'localhost'      | def           | DROP                    | YES          |
| 'root'@'localhost'      | def           | RELOAD                  | YES          |
| 'root'@'localhost'      | def           | SHUTDOWN                | YES          |
| 'root'@'localhost'      | def           | PROCESS                 | YES          |
| 'root'@'localhost'      | def           | FILE                    | YES          |
| 'root'@'localhost'      | def           | REFERENCES              | YES          |
| 'root'@'localhost'      | def           | INDEX                   | YES          |
| 'root'@'localhost'      | def           | ALTER                   | YES          |
| 'root'@'localhost'      | def           | SHOW DATABASES          | YES          |
| 'root'@'localhost'      | def           | SUPER                   | YES          |
| 'root'@'localhost'      | def           | CREATE TEMPORARY TABLES | YES          |
| 'root'@'localhost'      | def           | LOCK TABLES             | YES          |
| 'root'@'localhost'      | def           | EXECUTE                 | YES          |
| 'root'@'localhost'      | def           | REPLICATION SLAVE       | YES          |
| 'root'@'localhost'      | def           | REPLICATION CLIENT      | YES          |
| 'root'@'localhost'      | def           | CREATE VIEW             | YES          |
| 'root'@'localhost'      | def           | SHOW VIEW               | YES          |
| 'root'@'localhost'      | def           | CREATE ROUTINE          | YES          |
| 'root'@'localhost'      | def           | ALTER ROUTINE           | YES          |
| 'root'@'localhost'      | def           | CREATE USER             | YES          |
| 'root'@'localhost'      | def           | EVENT                   | YES          |
| 'root'@'localhost'      | def           | TRIGGER                 | YES          |
| 'root'@'localhost'      | def           | CREATE TABLESPACE       | YES          |
| 'root'@'moroco'         | def           | SELECT                  | YES          |
| 'root'@'moroco'         | def           | INSERT                  | YES          |
| 'root'@'moroco'         | def           | UPDATE                  | YES          |
| 'root'@'moroco'         | def           | DELETE                  | YES          |
| 'root'@'moroco'         | def           | CREATE                  | YES          |
| 'root'@'moroco'         | def           | DROP                    | YES          |
| 'root'@'moroco'         | def           | RELOAD                  | YES          |
| 'root'@'moroco'         | def           | SHUTDOWN                | YES          |
| 'root'@'moroco'         | def           | PROCESS                 | YES          |
| 'root'@'moroco'         | def           | FILE                    | YES          |
| 'root'@'moroco'         | def           | REFERENCES              | YES          |
| 'root'@'moroco'         | def           | INDEX                   | YES          |
| 'root'@'moroco'         | def           | ALTER                   | YES          |
| 'root'@'moroco'         | def           | SHOW DATABASES          | YES          |
| 'root'@'moroco'         | def           | SUPER                   | YES          |
| 'root'@'moroco'         | def           | CREATE TEMPORARY TABLES | YES          |
| 'root'@'moroco'         | def           | LOCK TABLES             | YES          |
| 'root'@'moroco'         | def           | EXECUTE                 | YES          |
| 'root'@'moroco'         | def           | REPLICATION SLAVE       | YES          |
| 'root'@'moroco'         | def           | REPLICATION CLIENT      | YES          |
| 'root'@'moroco'         | def           | CREATE VIEW             | YES          |
| 'root'@'moroco'         | def           | SHOW VIEW               | YES          |
| 'root'@'moroco'         | def           | CREATE ROUTINE          | YES          |
| 'root'@'moroco'         | def           | ALTER ROUTINE           | YES          |
| 'root'@'moroco'         | def           | CREATE USER             | YES          |
| 'root'@'moroco'         | def           | EVENT                   | YES          |
| 'root'@'moroco'         | def           | TRIGGER                 | YES          |
| 'root'@'moroco'         | def           | CREATE TABLESPACE       | YES          |
| 'root'@'127.0.0.1'      | def           | SELECT                  | YES          |
| 'root'@'127.0.0.1'      | def           | INSERT                  | YES          |
| 'root'@'127.0.0.1'      | def           | UPDATE                  | YES          |
| 'root'@'127.0.0.1'      | def           | DELETE                  | YES          |
| 'root'@'127.0.0.1'      | def           | CREATE                  | YES          |
| 'root'@'127.0.0.1'      | def           | DROP                    | YES          |
| 'root'@'127.0.0.1'      | def           | RELOAD                  | YES          |
| 'root'@'127.0.0.1'      | def           | SHUTDOWN                | YES          |
| 'root'@'127.0.0.1'      | def           | PROCESS                 | YES          |
| 'root'@'127.0.0.1'      | def           | FILE                    | YES          |
| 'root'@'127.0.0.1'      | def           | REFERENCES              | YES          |
| 'root'@'127.0.0.1'      | def           | INDEX                   | YES          |
| 'root'@'127.0.0.1'      | def           | ALTER                   | YES          |
| 'root'@'127.0.0.1'      | def           | SHOW DATABASES          | YES          |
| 'root'@'127.0.0.1'      | def           | SUPER                   | YES          |
| 'root'@'127.0.0.1'      | def           | CREATE TEMPORARY TABLES | YES          |
| 'root'@'127.0.0.1'      | def           | LOCK TABLES             | YES          |
| 'root'@'127.0.0.1'      | def           | EXECUTE                 | YES          |
| 'root'@'127.0.0.1'      | def           | REPLICATION SLAVE       | YES          |
| 'root'@'127.0.0.1'      | def           | REPLICATION CLIENT      | YES          |
| 'root'@'127.0.0.1'      | def           | CREATE VIEW             | YES          |
| 'root'@'127.0.0.1'      | def           | SHOW VIEW               | YES          |
| 'root'@'127.0.0.1'      | def           | CREATE ROUTINE          | YES          |
| 'root'@'127.0.0.1'      | def           | ALTER ROUTINE           | YES          |
| 'root'@'127.0.0.1'      | def           | CREATE USER             | YES          |
| 'root'@'127.0.0.1'      | def           | EVENT                   | YES          |
| 'root'@'127.0.0.1'      | def           | TRIGGER                 | YES          |
| sentry             |                                                                                                                      [102/1004]
+--------------------+
9 rows in set (0.00 sec)

mysql> SHOW GRANTS;
+----------------------------------------------------------------------------------------------------------------------------------------+
| Grants for root@localhost                                                                                                              |
+----------------------------------------------------------------------------------------------------------------------------------------+
| GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' IDENTIFIED BY PASSWORD '*156142B02A408C46FBD712EF578BA987F07D17CC' WITH GRANT OPTION |
| GRANT PROXY ON ''@'' TO 'root'@'localhost' WITH GRANT OPTION                                                                           |
+----------------------------------------------------------------------------------------------------------------------------------------+
2 rows in set (0.00 sec)

mysql> SELECT sql_grants FROM common_schema.sql_show_grants;
ERROR 1146 (42S02): Table 'common_schema.sql_show_grants' doesn't exist
mysql> select * from information_schema.user_privileges;
+-------------------------+---------------+-------------------------+--------------+
| GRANTEE                 | TABLE_CATALOG | PRIVILEGE_TYPE          | IS_GRANTABLE |
+-------------------------+---------------+-------------------------+--------------+
| 'root'@'localhost'      | def           | SELECT                  | YES          |
| 'root'@'localhost'      | def           | INSERT                  | YES          |
| 'root'@'localhost'      | def           | UPDATE                  | YES          |
| 'root'@'localhost'      | def           | DELETE                  | YES          |
| 'root'@'localhost'      | def           | CREATE                  | YES          |
| 'root'@'localhost'      | def           | DROP                    | YES          |
| 'root'@'localhost'      | def           | RELOAD                  | YES          |
| 'root'@'localhost'      | def           | SHUTDOWN                | YES          |
| 'root'@'localhost'      | def           | PROCESS                 | YES          |
| 'root'@'localhost'      | def           | FILE                    | YES          |
| 'root'@'localhost'      | def           | REFERENCES              | YES          |
| 'root'@'localhost'      | def           | INDEX                   | YES          |
| 'root'@'localhost'      | def           | ALTER                   | YES          |
| 'root'@'localhost'      | def           | SHOW DATABASES          | YES          |
| 'root'@'localhost'      | def           | SUPER                   | YES          |
| 'root'@'localhost'      | def           | CREATE TEMPORARY TABLES | YES          |
| 'root'@'localhost'      | def           | LOCK TABLES             | YES          |
| 'root'@'localhost'      | def           | EXECUTE                 | YES          |
| 'root'@'localhost'      | def           | REPLICATION SLAVE       | YES          |
| 'root'@'localhost'      | def           | REPLICATION CLIENT      | YES          |
| 'root'@'localhost'      | def           | CREATE VIEW             | YES          |
| 'root'@'localhost'      | def           | SHOW VIEW               | YES          |
| 'root'@'localhost'      | def           | CREATE ROUTINE          | YES          |
: cerberus :  1  ec2-user@moroco:~                                                                                            ][ 09/23/2016 11:27:50 ]


```
