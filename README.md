# Bytes of Swiss

I'd like this to be a library of no frills Ansible roles that can be combined to make a vulnerable virtual machine. Vulnerabilities can be made as a new task in the corresponding role (HTTP, samba) and enabled using a variable when the role in included in the playbook.

All roles are tested with [Molecule](https://molecule.readthedocs.io/en/latest/) and [Vagrant](https://www.vagrantup.com/).

## Example 

This makes an existing machine vulnerable by making a new bind shell every minute, running telnet, and removing authentication for SSH by altering PAM.

```
---
- hosts: vulnerable
  tasks:
    - name: Constant random shells
      include_role:
        name: common/cron
      vars:
        - do_random_shells: true

    - name: Install telnet
      include_role:
        name: service/telnet

    - name: Make ssh vulnerable
      include_role:
        name: service/ssh
      vars:
          - do_insecure_login: true
```