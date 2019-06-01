mail
=========

Installs an SMTP server.

Requirements
------------

None.

Role Variables
--------------

```
server_type
  postfix - Installs postfix.
```

Dependencies
------------

None.

Example Playbook
----------------

    - hosts: servers
      roles:
         - { role: mail, server_type: 'postfix' }

Author Information
------------------

Nathaniel Beckstead @becksteadn
