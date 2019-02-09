Role Name
=========

Installs and starts a redis server.

Requirements
------------

Tested on Ubuntu 16.04.

Role Variables
--------------

* **redis_port** - Port to listen on. 6379 by default.

Dependencies
------------

None.

Example Playbook
----------------

    - hosts: servers
      roles:
         - { role: redis, redis_port: 7739 }

License
-------

BSD
