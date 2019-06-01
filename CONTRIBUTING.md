# Contributing

Any help with this project is greatly appreciated. Check the GitHub [Project Board](https://github.com/becksteadn/Bytes-Of-Swiss/projects) for the current status of tasks.

## Proposing a new vulnerability

Make an issue using the Vulnerability Request template. If it requires a service that has not been created in `roles/service`, also create an issue with the Service Required template.

## Making a new role

This project uses a custom [cookiecutter](https://github.com/audreyr/cookiecutter) project to make a new role with Molecule support. It contains changes to instance setup and testing. You can see all of the changes in the [GitHub repo](https://github.com/becksteadn/cookiecutter-molecule). 

Navigate to the `roles/service/` or `roles/vuln/` directory and run

`cookiecutter gh:becksteadn/cookiecutter-molecule`

