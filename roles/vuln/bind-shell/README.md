Bind Shell
=========

Creates a cron job that spawns a netcat shell that listens on a random port.

Role Variables
--------------

None.

Example Playbook
----------------

    - hosts: servers
      roles:
         - bind-shell
