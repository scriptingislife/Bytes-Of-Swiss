---
name: Service Required
about: Request a role that installs an application required by a vulnerability.
title: "[SERV]  \U0001F9F0 Service Required"
labels: enhancement, role
assignees: ''

---

**Description**
A clear and concise description of the required server or application. 

**What kind of vulnerabilities can use this service?**
Give a few examples of vulnerabilities that use this service.

**What other services are needed?**
List other required services or applications such as a web server or database.

**Additional context**
Link to any blog posts, documentation, etc. that will provide more information.

**TODO**

- [ ]  Create role from cookiecutter
- [ ]  Modify molecule.yml
    - [ ]  Forward ports
    - [ ]  Change/add instances
- [ ]  Add dependencies to meta/main.yml
    - [ ]  Create dependency roles if they don't already exist
- [ ]  Write role
- [ ]  Write tests
- [ ]  Update README.md
