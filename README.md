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

![](http://static.matsumana.info/blog/prometheus_scraping_target_example.png)

#### Scraped metrics

[Example PromQL](http://localhost:30000/graph?g0.range_input=30m&g0.expr=rate(nginx_http_requests_total%7Binstance%3D~%22.*%3A9113%22%7D%5B1m%5D)&g0.tab=0&g1.range_input=1h&g1.expr=jvm_memory_used_bytes%7Barea%3D%22heap%22%2C%20instance%3D~%22.*%3A28080%22%7D&g1.tab=0)

##### Example nginx metrics

![](http://static.matsumana.info/blog/nginx_metrics_example.png)

##### Example Java app metrics

![](http://static.matsumana.info/blog/jvm_metrics_example.png)

&nbsp;

### App

#### Serve from nginx
http://localhost:31000

#### Serve from the Java app (through nginx)
http://localhost:31000/hello/world
