Role Name
=========

Installs vsftpd and can enable anonymous access.

Requirements
------------

Tested on Ubuntu 16.04.

Role Variables
--------------

* **testing** - Runs all tasks in main.yml
* **do_allow_anonymous** - Run the anonymous_login.yml task to give anonymous users liberal permissions
* **do_write_enable** - Enable (or disable) write permissions
* **config_file** - The vsftpd configuration file.
* **ftp_own_dir** - 
* **banner** - Text displayed when a user connects
* **write_enable** - Text used (YES or NO) in the configuration for write permissions
* **anon_root** - Changes the directory for anonymous users
* **allow_anonymous** - Text used (YES or NO) in the configuration for anonymous access

Dependencies
------------

None.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables
passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: ftp, do_allo_anonymous: true }

License
-------

BSD
