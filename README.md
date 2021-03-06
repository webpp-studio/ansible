# ansible image

Docker image for ansible tool

[Images on Docker Hub](https://hub.docker.com/r/webpp/ansible)

Usage:

```bash 
docker run --rm -v `pwd`:/app webpp/ansible:latest ansible-playbook -i hosts playbook.yaml
```

Full image with ansible collections:

```bash 
docker run --rm -v `pwd`:/app webpp/ansible:full ansible-playbook -i hosts playbook.yaml
```

For add ssh keys use (SSH_KEY is path to ssh private key):
```bash 
docker run --rm -v `pwd`:/app webpp/ansible:latest 
    /bin/bash -c 'eval $(ssh-agent -s);
                  chmod 600 $SSH_KEY;
                  ssh-add $SSH_KEY;
                  ansible-playbook -i hosts playbook.yaml'
```