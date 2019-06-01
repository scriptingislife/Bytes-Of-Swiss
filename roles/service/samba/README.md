samba
=========

Installs a Samba file server.

Playbook Variables
------------------
```
samba_conf
  Configuration file location (Default - /etc/samba/smb.conf)

make_share
  Create a share on install (Default - true)

share_path
  Path for initial share (Default - /samba/test)

share_name
  Name of the initial share (Default - 'Test Share')

share_browsable: 
  Whether the share will be visible when only connecting to the base path. (Default - 'yes')

share_writeable
  Whether users can write to the share (Default - 'no')

share_guestok
  Allow anonymous access (Default - 'yes')

share_readonly
  Whether users are only allowed to read from the share (Default - 'yes')

```

Example Playbook
----------------

    - hosts: servers
      roles:
         - { role: service/samba, share_name: 'Secret Share' }

Author Information
------------------

Nathaniel Beckstead @becksteadn