# Multi container pod example

## How to start on local

### preparation

```
$ docker run -d -p 5000:5000 --name registry registry:2.6
```

### Build then push to the local registry

```
$ make docker-push-app-local
$ make docker-push-nginx-local
```

### Deploy to k8s

```
$ make kubectl-create-example
```

---

## Links

### Prometheus

http://localhost:30000/

#### Scraping targets

http://localhost:30000/targets

&nbsp;

### App

#### Serve from nginx
http://localhost:31000

#### Serve from the Java app (through nginx)
http://localhost:31000/hello/world
