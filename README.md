# ansible-master

Collection of Ansible playbooks, and scripts for bootstrapping a deployment host

Ansible v2.0.0.2

Instructions:

 * add roles to requirements.yml
 * populate roles directory with role-it-up.sh
 * populate inventory files

To test with a local vm, add your host to inventory/dev, then:

    ansible-playbook -i inventory/dev -u <username> --ask-pass --ask-sudo-pass site.yml

The ask-pass option isn't necessary if a key is installed for the user on the vm. username is not necessary if specified in inventory.


