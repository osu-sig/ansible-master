# ansible-master

Collection of Ansible playbooks, along with scripts for bootstrapping a deployment host and adding roles

Ansible v2.0.0.2

Platforms:

 * Debian
 * RedHat

Instructions:

 * add roles to requirements.yml
 * populate roles directory with role-it-up.sh
 * populate inventory files

To test with a local vm, use the/localhost inventory file::

    ansible-playbook -i inventory/localhost -u <username> --ask-pass --ask-sudo-pass site.yml

The --ask-pass options are not necessary on localhost, or a remote machine if a key is installed for the user on the vm. Also, username is not necessary if specified in the inventory file.
