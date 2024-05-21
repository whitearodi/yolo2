# Requirements 
## Stage 2: Ansible (with Optional Terraform)
### Without Terraform:

### Set Up a New Branch and Directory:

- Create a new branch stage_two:

`git checkout -b stage_two`

### Merge Master into Stage Two:

- Merge the master branch into stage_two to ensure it's up to date:

`git checkout stage_two`

`git merge master`

### Enhance Ansible Playbook:

- In the stage_two directory, create a new playbook file `site_stage2.yml`
- Define Enhanced Playbook Tasks:

- Refine your roles to include more detailed configurations and tasks.
- Incorporate additional variables and separate configuration files for different environments (development, staging, production).

### Additional Configurations and Testing:

- Define additional roles and tasks, such as setting up load balancers & advanced security settings.
- Create tasks for database initialization, migrations, or seeding with example data.

### Run the Enhanced Playbook:

- Ensure your Vagrant machine is up:

`vagrant up`
- Execute the enhanced playbook:

`ansible-playbook -i inventory site_stage2.yml`

- Verify the application functionality and any new features or configurations added.