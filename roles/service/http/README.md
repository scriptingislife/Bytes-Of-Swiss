Role Name
=========

Installs a web server and creates vulnerabilities with PHP and cgi-bin.

Requirements
------------

Tested on Ubuntu 16.04.

Role Variables
--------------

* **testing** - Run all tasks in main.yml
* **do_webshell** - Copy a PHP web shell to the server
* **do_shellshock** - Install a vulnerable version of bash and configure cgi-bin if `enable_cgi_bin` is true.
* **server_type** - `apache` or `nginx`
* **apache2_conf_file** - Main configuration file for Apache
* **nginx_conf_file** - Main configuration file for NGINX
* **document_root** - Root of web server
* **shell_name** - Filename of web shell to use
* **remote_shell_name** - Filename to use when PHP shell is on the server
* **shell_passwd** - Password for web shell if required
* **enable_cgi_bin** - If false, shellshock.yml will only install a vulnerable version of bash and not configure the web server to use cgi-bin

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in
regards to parameters that may need to be set for other roles, or variables that
are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables
passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: http, shell_name: '404.php' }

License
-------

BSD
