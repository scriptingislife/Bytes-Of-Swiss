Role Name
=========

Installs OpenSSH server and creates several vulnerabilities. 

Requirements
------------

Tested on Ubuntu 16.04.

Role Variables
--------------

* **testing** - Run all tasks in main.yml
* **do_insecure_login** - Modify PAM to allow login with no password
* **sshd_config** - Configuration file for sshd

Dependencies
------------

None.

Example Playbook
----------------

    - hosts: servers
      roles:
         - { role: ssh, do_insecure_login: true }

License
-------

BSD
