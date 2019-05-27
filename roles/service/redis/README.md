redis
=========

Installs the Redis server.

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

None.

Example Playbook
----------------

    - hosts: servers
      roles:
         - { role: redis, my_var: 42 }

Author Information
------------------

Nathaniel Beckstead @github