# Requirements 
## 1. Set Up Vagrant environment 
- Install Vagrant and VirtualBox if not already installed.

- Create new directory "/vagrant" with your project

- Initialize Vagrant with an Ubuntu 20.04 box using Jeff Geerling's configuration:

     `vagrant init geerlingguy/ubuntu2004`

- Start the Vagrant machine: 

     `vagrant up`

## 2. Set Up Ansible Playbook

- Inside your project directory, create an ansible directory.

- In the ansible directory, create the main playbook file site.yml.

- Define variables and roles:
    - Create a `vars` directory for variable files.
    - Create a `roles` directory for different roles (e.g., frontend, backend, database).


## 3. Define Tasks in the Playbook:


- Use variables for configurations.

- Implement roles for various tasks. Each role should have its own directory with tasks, handlers, templates, and files as needed.

## 4. Clone Repository and Configure Containers


Create tasks to clone the GitHub repository.

Define Docker container configurations within the playbook.

Example `site.yml` snippet:
 - hosts: all
  become: yes
  vars_files:
    - vars/main.yml
  roles:
    - frontend
    - backend
    - database

## 5. Run the Playbook

- Execute the playbook to set up and configure the Vagrant server and Docker containers:

  `ansible-playbook -i inventory site.yml`

- Ensure the application is accessible via the browser.
