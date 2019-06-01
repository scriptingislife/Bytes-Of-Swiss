ftp
=========

Installs an FTP server.

Requirements
------------

None.

Role Variables
--------------

```
server_type
  vsftpd - Installs the vsftpd FTP server
ftp_banner
  Message to display on connect
```

Dependencies
------------

None.

Example Playbook
----------------

    - hosts: servers
      roles:
         - { role: ftp, ftp_banner: 'Welcome to my FTP server'! }

Author Information
------------------

Nathaniel Beckstead @becksteadn