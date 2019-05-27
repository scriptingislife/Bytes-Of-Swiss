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
  mysql - Installs a MySQL server
  mariadb - Installs a MariaDB server
server_version
```

Dependencies
------------

None.

Example Playbook
----------------

    - hosts: servers
      roles:
         - { role: database, server_type: mariadb }

Author Information
------------------

Nathaniel Beckstead @becksteadn