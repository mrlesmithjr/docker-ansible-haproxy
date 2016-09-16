Repository Information
======================
Builds a [Docker] container running [HAProxy] ready for use. Provisioning
provided via [Ansible].

How-To
------
No default `haproxy.cfg` is provided. You will need to consume this container
and provide your desired `haproxy.cfg` into the `config/` folder.

Build

`Dockerfile`
```
FROM mrlesmithjr/haproxy:alpine
COPY config/haproxy.cfg /etc/haproxy/haproxy.cfg
```
```
docker build -t my-haproxy .
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
