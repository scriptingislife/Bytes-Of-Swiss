Web
=========

Creates a web server.

Role Variables
--------------

```
server_type
    apache - (Default) Install the Apache web server
    nginx - Install the NGINX web server
server_version
    latest - (Default) Install the default version from the package manager
    version - Install a specific version (ex. 1.6.3)
```

Example Playbook
----------------

    - hosts: servers
      roles:
         - { role: web, server_type: "nginx" }

Author Information
------------------

Nathaniel Beckstead @becksteadn
