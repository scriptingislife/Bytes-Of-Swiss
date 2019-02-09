Role Name
=========

Installs postfix and can create a backdoor with a content filter script.

Requirements
------------

Tested on Ubuntu 16.04.

Role Variables
--------------

* **testing** - Run all tasks in main.yml
* **do_shell* - Configure postfix to use the backdoor
* **shell_user** - User backdoor will be run as
  * Default - 'vagrant'
* **root_dir** - Directory to place backdoor
* **hook_file** - Local filename of hook
* **hostname** - Hostname postfix will use. Doesn't change system hostname
* **backdoor_secret** - String to identify an email meant for backdoor

Dependencies
------------

None.

Example Playbook
----------------

    - hosts: servers
      roles:
         - { role: smtp, do_shell: true }

License
-------

BSD
