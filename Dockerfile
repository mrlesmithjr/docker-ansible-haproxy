FROM mrlesmithjr/haproxy:alpine

MAINTAINER Larry Smith Jr. <mrlesmithjr@gmail.com>

# Copy Ansible files
COPY config/ansible/ /

# Execute Ansible Playbook
RUN ansible-playbook -i "localhost," -c local /haproxy.yml

# Expose Ports
EXPOSE 80 443 9090
