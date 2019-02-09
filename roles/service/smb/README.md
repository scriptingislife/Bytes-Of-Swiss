Role Name
=========

Installs and starts the smb server and creates shares.

Requirements
------------

Tested on Ubuntu 16.04.

Role Variables
--------------

* **testing** - Run all tasks in main.yml
* **do_anon_share** - Create a share that can be accessed anonymously
* **smb_conf** - Configuration file for smb
  * Default - '/etc/samba/smb.conf'
* **share_name** - Default share name
  * Default - 'Test Share'
* **share_browsable** - The share can be seen in a list of shares
  * Default - 'yes'
* **share_writeable** - Share can be written to
  * Default - 'yes'
* **share_guestok** - Share can be accessed by guests
  * Default - 'yes'
* **share_readonly** - Share can only be read
  * Default - 'no'

Dependencies
------------

None.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables
passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: smb, do_anon_share: true }

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a
website (HTML is not allowed).
