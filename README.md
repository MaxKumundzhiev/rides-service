# rides-service
Fusion of backend services, meant for patching an ordering of taxi and customers/rides statistics.


## Deployment
Spin up single container
```bash
$ docker build -t rides-service .
$ docker run -d --name rides-service-1 -p 80:80 rides-service
```

Spin up multiple containers
```bash
$ docker-compose up --build --scale rides-service=2
```