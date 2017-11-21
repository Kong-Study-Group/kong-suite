# kong-suite

Kong Suit, out-of-the-box, SSH Server for Docker containers

* Development environment
  * CentOS 7.3.1611
    * kong 0.11.1
  * PostgreSQL 9.6.2


## Depends
You must install docker and docker-compose

* docker-machine version 0.13.0, build 9ba6da9
* docker version 17.10.0-ce, build f4ffd25
* docker-compose version 1.17.1, build 6d101fb

[INSTALL](https://github.com/WALL-E/static)


## Start docker and kong

```
# docker-compose build

# docker-compose up -d
```

Now, Kong is running

`:8000` - Proxy layer for API requests

`:8001` - RESTful Admin API for configuration

`:8022` - Connect to container by ssh

```
Retrieve node status
$ curl http://127.0.0.1:8001/status

Connect to PostgreSQL
$ psql -U postgres -d postgres -h 127.0.0.1
```

[DOCS](https://getkong.org/docs/)

## Built-in available service name 
* postgre
* kong
