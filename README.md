1. Set up your control machine with Ansible on it.
2. Launch ec2 instance at aws using terraform_setup folder.

    2.a open terraform_setup folder.

    2.b terraform init

    2.c terraform apply

3. Inside ansible_setup folder run:

ansible-playbook playbook.yml -l server1 -u root

4. In browser type public ip addres of newly created EC2 instance.
5. Follow guided WordPress setup
6. Well done, you have your wordpress website