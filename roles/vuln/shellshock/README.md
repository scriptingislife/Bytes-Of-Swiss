shellshock
=========

Install an older version of Bash that is vulnerable to shellshock.

Requirements
------------

None.

Role Variables
--------------

```
my_var
  42 - Creates 42 gold coins.
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