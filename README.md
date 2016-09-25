Repository Information
======================
Builds a [Docker] container running [HAProxy] ready for use. Provisioning
provided via [Ansible]. This image will be used for the latest [Docker] Swarm
mode 1.12.

How-To
------
Define HAProxy configurations in `config/haproxy.cfg` and either build the
new image or push to [Docker] hub or etc.

Consuming
---------
From [Docker] Hub:
```
docker service create haproxy -p 9090 mrlesmithjr/haproxy:swarm
```

License
-------

BSD

Author Information
------------------

Larry Smith Jr.
- [@mrlesmithjr]
- [everythingshouldbevirtual.com]
- [mrlesmithjr@gmail.com]


[Ansible]: <https://www.ansible.com/>
[Docker]: <https://www.docker.com>
[HAProxy]: <http://www.haproxy.org/>
[@mrlesmithjr]: <https://twitter.com/mrlesmithjr>
[everythingshouldbevirtual.com]: <http://everythingshouldbevirtual.com>
[mrlesmithjr@gmail.com]: <mailto:mrlesmithjr@gmail.com>
