Database
=========

Installs a database.

Requirements
------------

None.

Role Variables
--------------

```
server_type
  mysql - Installs a MySQL server (Default)
  mariadb - Installs a MariaDB server
server_version
  Package version to install (Default - latest)
db_root_passwd
  Root password to the database. (Default - changeme)
db_listen_ip
  IP for the server to listen on. (Default - 127.0.0.1)
```

Dependencies
------------

None.

Example Playbook
----------------

    - hosts: servers
      roles:
         - { role: database, server_type: mariadb, db_root_passwd: 's3cret' }

Author Information
------------------

Nathaniel Beckstead @becksteadn