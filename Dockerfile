FROM python:3.8-slim

ENV ANSIBLE_VERSION=3.1.0

RUN python3 -m pip install --no-cache-dir ansible==${ANSIBLE_VERSION} && \
    find / -name "*.pyc" -exec rm -f {} \; && \
    rm -rf $(find / -name "ansible_collections" -print) && \
	mkdir -p /etc/ansible && \
    echo -e '[local]\nlocalhost ansible_connection=local' > /etc/ansible/hosts

CMD ['ansible', '--version']
