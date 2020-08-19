#!/bin/sh

nginx

# Since nginx-prometheus-exporter can't start if can't scrape metrics from nginx, wait for a while.
sleep 1

/nginx-prometheus-exporter/nginx-prometheus-exporter -nginx.scrape-uri http://127.0.0.1:18081/stub_status
