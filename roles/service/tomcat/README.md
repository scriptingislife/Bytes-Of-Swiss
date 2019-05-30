tomcat
=========

Installs an Apache Tomcat server.

Requirements
------------

None.

Role Variables
--------------

```
tomcat_dir
  Directory in which to install Tomcat. (Default - /opt/tomcat)
tomcat_passwd
  Admin password for Tomcat. (Default - s3cret)
tomcat_version
  Version to install. (Default - 9.0.14)
```

Dependencies
------------

None.

Example Playbook
----------------

    - hosts: servers
      roles:
         - { role: tomcat, tomcat_passwd: 'letmein' }

Author Information
------------------

Nathaniel Beckstead @becksteadn
