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
         - { role: ftp, my_var: 42 }

Author Information
------------------

Nathaniel Beckstead @github