shellshock
=========

Install an older version of Bash that is vulnerable to shellshock. Currently supports apache2 on Debian systems and httpd on RHEL systems.

Requirements
------------

None.

Role Variables
--------------

```
bash_version
  Version of Bash to install (Default - 3.0)
cgi_script
  CGI script to use. Options can be found in `files/`. (Default - uptime.sh)
```

Dependencies
------------

* web

Example Playbook
----------------

    - hosts: servers
      roles:
         - shellshock

Author Information
------------------

Nathaniel Beckstead @becksteadn