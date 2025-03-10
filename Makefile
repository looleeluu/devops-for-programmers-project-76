install:
	ansible-galaxy install -r requirements.yml --vault-password-file .password

list:
	ansible-inventory -i inventory.ini --list --vault-password-file .password

ping:
	ansible -i inventory.ini all -m ping --vault-password-file .password

deploy:
	ansible-playbook -i inventory.ini playbook.yml --tags deploy --vault-password-file .password

prepare:
	ansible-playbook -i inventory.ini playbook.yml --tags prepare --vault-password-file .password

datadog:
	ansible-playbook -i inventory.ini playbook.yml --tags datadog --vault-password-file .password

start:
	ansible-playbook -i inventory.ini playbook.yml --vault-password-file .password

edit-all-vault:
	ansible-vault edit group_vars/all/vault.yml --vault-password-file .password

edit-webservers-vault:
	ansible-vault edit group_vars/webservers/vault.yml --vault-password-file .password
