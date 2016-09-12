FROM mrlesmithjr/ubuntu-ansible:16.04

MAINTAINER Larry Smith Jr. <mrlesmithjr@gmail.com>

# Define HAProxy version to install
ENV HAPROXY_MAJOR_VER="1.6" \
    HAPROXY_VER="1.6.0"

# Copy Ansible Related Files
COPY config/ansible/ /

# Run Ansible playbook
RUN ansible-playbook -i "localhost," -c local /playbook.yml \
    --extra-vars "haproxy_major_ver=$HAPROXY_MAJOR_VER haproxy_ver=$HAPROXY_VER" && \
    apt-get -y clean && \
    apt-get -y autoremove && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Copy Docker Entrypoint
COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

# Container start-up
CMD ["haproxy", "-f", "/etc/haproxy/haproxy.cfg"]
