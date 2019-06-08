insecure-ssh-config
=========

Creates an insecure SSH configuration.

Dependencies
------------

`service/ssh`

Role Variables
--------------

```
sshd_config - The path of the SSH server configuration file.
```

Example Playbook
----------------

    - hosts: servers
      roles:
         - insecure-ssh-config

License
-------

BSD

Author Information
------------------

Nathaniel Beckstead @becksteadn