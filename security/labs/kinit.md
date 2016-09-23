
1. Connecting to node bombay

```
% ssh -i ~/sharop_cdh.pem  ec2-user@bombay
```

2. Executing kinit

```
$ kinit
Password for ec2-user@SHAROP.NET:
```

3. Executing klist

```
$ klist
Ticket cache: FILE:/tmp/krb5cc_1000
Default principal: ec2-user@SHAROP.NET

Valid starting     Expires            Service principal
22/09/16 23:43:19  23/09/16 23:43:19  krbtgt/SHAROP.NET@SHAROP.NET
        renew until 29/09/16 23:43:19
```
