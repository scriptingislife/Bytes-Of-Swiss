# Bytes of Swiss

| Master | Build |
|--------|-------|
| ![ci-master](https://travis-ci.com/becksteadn/Bytes-Of-Swiss.svg?branch=master) | ![ci-build](https://travis-ci.com/becksteadn/Bytes-Of-Swiss.svg?branch=build)   |

Bytes of Swiss is a library of no frills Ansible roles that can be combined to make a vulnerable virtual machine. This can be used for cybersecurity King of the Hill competitions, penetration testing practice, or to test both offensive and defense tools. 

Vulnerabities are located in `roles/vuln` and pull in services like an FTP server or database from `roles/service` as needed.  

All roles are tested with [Molecule](https://molecule.readthedocs.io/en/latest/) and [Vagrant](https://www.vagrantup.com/).

## Example 

This makes an existing machine vulnerable by making a new bind shell every minute, creating a PHP shell, and running telnet.

```
---
- hosts: vulnerable
  roles:
    - vuln/bind-shell
    - vuln/web-shell
    - service/telnet
```

### Try It Out

Download the repository.

`git clone https://github.com/becksteadn/Bytes-Of-Swiss.git`

Start the example VM with Vagrant

`vagrant up`

Run the example playbook.

`ansible-playbook -i vagrant.ini example.yml`

Exploit the machine.

* Web shell
  * `curl localhost:8080/cmd.php?cmd=cat%20/etc/passwd`
* Telnet
  * `telnet localhost 2323`
  * Log in with `vagrant:vagrant`
* Bind shell
  * `vagrant ssh`
  * `sudo netstat -tunlp`
  * Observe the processes listening on high ports. Connect to one with `nc` and run some bash commands. 

## Contributing

Any help or suggestions are greatly appreciated! Check out `CONTRIBUTING.md` for details.