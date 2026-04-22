OpenStack Automation Toolkit
Author: Najmul Islam
Project Type: Automation Scripts & Tools for OpenStack Operations

🚀 Overview
The OpenStack Automation Toolkit is a collection of Bash, Python, and Ansible-based automation utilities designed to simplify day‑to‑day tasks in OpenStack private/public cloud environments.
It is built for:

Cloud engineers
DevOps teams
Administrators managing large OpenStack clusters
Anyone who wants to automate repetitive OpenStack operations


🎯 Features
✔ Automated OpenStack installation scripts
✔ CLI‑based automation for compute, network, and storage
✔ Python SDK utilities for programmatic resource creation
✔ Ready‑to‑use Ansible playbooks
✔ Production‑ready folder structure
✔ Easy to extend & customize

📦 Tech Stack

Bash (OpenStack CLI automation)
Python 3.x + openstacksdk
Ansible (end‑to‑end OpenStack provisioning)
Keystone authentication


📥 Prerequisites

Linux OS (Ubuntu / CentOS recommended)
OpenStack CLI installed
Admin or project‑specific OpenStack credentials (RC file)
Python 3 installed
Ansible installed (optional)


🔧 How to Use
1️⃣ Clone the repository
Shellgit clone https://github.com/<your-username>/openstack-automation-toolkit.gitcd openstack-automation-toolkitShow more lines
2️⃣ Run any automation script
Shellbash scripts/create_instance.shShow more lines
3️⃣ Python automation
Shellpip install -r python/requirements.txtpython python/create_instance.pyShow more lines
4️⃣ Ansible deployment
Shellansible-playbook ansible/openstack_install.yml -i ansible/inventory.iniShow more lines

📂 Repository Contents


FolderDescriptionscripts/Bash scripts for CLI-based automationpython/Python tools using OpenStack SDKansible/Ansible playbooks for OpenStack deploymentdocs/Architecture, workflows, and design notes

🤝 Contributing
Pull requests are welcome!
For major changes, please open an issue first.