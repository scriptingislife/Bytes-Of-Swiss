ssh
=========

Install an SSH server.

Requirements
------------

None.

Role Variables
--------------

```
server_type
  Kind of SSH server to install. (Default - openssh-server)
```

Dependencies
------------

None.

Example Playbook
----------------

    - hosts: servers
      roles:
         - ssh

Author Information
------------------

Nathaniel Beckstead @becksteadn
