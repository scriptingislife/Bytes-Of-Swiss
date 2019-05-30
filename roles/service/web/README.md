web
=========

Creates a web server.

Role Variables
--------------

```
server_type
    apache - Install the Apache web server (Default)
    nginx - Install the NGINX web server
server_version
    latest - Install the default version from the package manager (Default)
    version - Install a specific version (ex. 1.6.3)
```

Example Playbook
----------------

    - hosts: servers
      roles:
         - { role: web, server_type: 'nginx' }

Author Information
------------------

Nathaniel Beckstead @becksteadn
