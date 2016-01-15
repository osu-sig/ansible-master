# ansible-master

To test with a local vm, add your host to inventory/dev, then:
    ansible-playbook -i inventory/dev -u <username> --ask-pass site.yml
The ask-pass option isn't necessary if a key is installed for the user on the vm. username is not necessary if specified in inventory.
