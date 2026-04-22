#!/bin/bash

# Base project directory
PROJECT="server-management"

echo "Creating Ansible project: $PROJECT"

# Create directories
mkdir -p $PROJECT
mkdir -p $PROJECT/inventory/group_vars
mkdir -p $PROJECT/inventory/host_vars
mkdir -p $PROJECT/roles/common/tasks
mkdir -p $PROJECT/roles/web/tasks
mkdir -p $PROJECT/roles/app/tasks
mkdir -p $PROJECT/roles/db/tasks
mkdir -p $PROJECT/playbooks

# Create files
touch $PROJECT/ansible.cfg
touch $PROJECT/inventory/hosts.ini

# Group vars
touch $PROJECT/inventory/group_vars/webservers.yml
touch $PROJECT/inventory/group_vars/appservers.yml
touch $PROJECT/inventory/group_vars/dbservers.yml

# Host vars
touch $PROJECT/inventory/host_vars/server1.yml
touch $PROJECT/inventory/host_vars/server2.yml
touch $PROJECT/inventory/host_vars/server3.yml

# Roles
touch $PROJECT/roles/common/tasks/main.yml
touch $PROJECT/roles/web/tasks/main.yml
touch $PROJECT/roles/app/tasks/main.yml
touch $PROJECT/roles/db/tasks/main.yml

# Playbooks
touch $PROJECT/playbooks/site.yml
touch $PROJECT/playbooks/web.yml
touch $PROJECT/playbooks/app.yml
touch $PROJECT/playbooks/db.yml

echo "Project structure created successfully!"