php
=========

Install PHP.

Requirements
------------

None.

Role Variables
--------------

```
server_type
  Web server that will connect to PHP. (Default - apache2)
php_version
  Version of PHP to install. (Default - 7.3)
```

Dependencies
------------

None.

Example Playbook
----------------

    - hosts: servers
      roles:
         - { role: php, server_type: 'nginx' }

Author Information
------------------

Nathaniel Beckstead @becksteadn