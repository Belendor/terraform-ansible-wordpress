1. Clone repo.
2. Setup your crediantials in AWS CLI.
3. Inside terraform_setup folder deploy Ansible control and host nodes:

    3.a. terraform init

    3.b. terraform apply

4. SSH into your control node and run following commands:

    4.a. sudo apt-add-repository ppa:ansible/ansible and hit Enter.

    4.b. sudo apt update

    4.c. sudo apt install ansible -y

    4.d. sudo nano /etc/ansible/hosts

    4.e. replace file content to this, where ansible_host=<public ec2 ip from terraform outputs>:
    
    ```[servers]
    server1 ansible_host=203.0.113.111

    [all:vars]
    ansible_python_interpreter=/usr/bin/python3```

5. Copy control nodes public SSH key into hosts authorized_keys file:

    5.a. inside control node as root user run sudo ssh-keygen

    5.b. inside control node copy public key from /root/.ssh/id_rsa.pub

    5.c. inside host node paste public key inside /root/.ssh/authorized_keys

6. Inside control node test if ansible works:

    sudo ansible all -m ping -u root

7. Inside control node as root user clone this repo and run from ansible_setup folder:

    ansible-playbook playbook.yml -l server1 -u root

4. In browser go to your hosts public IP that you can find from terraform outputs.
5. Follow guided WordPress setup
6. Well done, you have your WordPress website on your host machine.