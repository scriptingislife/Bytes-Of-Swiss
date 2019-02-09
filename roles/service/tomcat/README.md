Role Name
=========

Installs Apache tomcaat and create a tomcat user.

Requirements
------------

Tested on Ubuntu 16.04.

Role Variables
--------------

* **tomcat_dir** - Directory to place tomcat files
* **tomcat_passwd** - Plaintext password for `tomcat` user

Dependencies
------------

None.

Example Playbook
----------------

    - hosts: servers
      roles:
         - { role: tomcat, tomcat_passwd: 'changeme' }

License
-------

BSD
