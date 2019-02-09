Role Name
=========

Installs SQL server and configures several vulnerabilities.

Requirements
------------

Tested on Ubuntu 16.04.

Role Variables
--------------

* **testing** - Run all tasks in main.yml
* **do_trickshot** - Install the [trickshot](https://github.com/RITRedteam/Trickshot) backdoor
* **server_type** - MySQL or MariaDB. Currently only MySQL is supported
* **root_passwd** - Password to be used of root account

Dependencies
------------

None.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables
passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: sql, server_type: 'mariadb' }

License
-------

BSD
