# nrpe-galera
A set of nagios nrpe checks to see Galera's status

### Usage

1. Copy the 3 scripts (**check_galera_state, check_galera_status and check_galera_uuid**) to your nagios plugins directory (ex. **/usr/lib64/nagios/plugins/**)
1. Change **DB_USER** value of the 3 scripts to the db user you're using
2. Add these to your nrpe.cfg
```
command[check_galera_state]=/usr/lib64/nagios/plugins/check_galera_state
command[check_galera_status]=/usr/lib64/nagios/plugins/check_galera_status
command[check_galera_uuid]=/usr/lib64/nagios/plugins/check_galera_uuid

```
4. On your Nagios Monitoring Server, add these service checks.
```
define service {
        host_name                       your_hostname
        service_description             Check Galera State
        check_command                   check_nrpe!check_galera_state
        check_interval                  1
        use                             generic-service
}

define service {
        host_name                       your_hostname
        service_description             Check Galera Status
        check_command                   check_nrpe!check_galera_status
        check_interval                  1
        use                             generic-service
}

define service {
        host_name                       your_hostname
        service_description             Check Galera ID State
        check_command                   check_nrpe!check_galera_uuid
        check_interval                  1
        use                             generic-service
}

```


