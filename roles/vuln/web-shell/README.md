Web Shell
=========

Places a PHP shell on a web server.

Requirements
------------

None.

Role Variables
--------------

```
document_root
  Web server root (Default - /var/www/html)

shell_name
  Filename of the shell. Options located in `files/`. (Default - cmd.php)

remote_shell_name
  Filename of the shell when copied. Can be changed to make the purpose less obvious. (Default - cmd.php)

shell_passwd
  Password for the shell if needed like in `404.php`. (Default - changeme)
```

Dependencies
------------

* web
* php

Example Playbook
----------------

    - hosts: servers
      roles:
         - web-shell

License
-------

BSD

Author Information
------------------

Nathaniel Beckstead @becksteadn