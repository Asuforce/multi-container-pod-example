#!/bin/sh

# Start in the background
nginx

# Since nginx-prometheus-exporter can't start if can't scrape metrics from nginx, wait for a while.
sleep 1

# Need to use `exec`. otherwise shutdown signal can't reach to nginx-prometheus-exporter
exec /nginx-prometheus-exporter/nginx-prometheus-exporter -nginx.scrape-uri http://127.0.0.1:18080/stub_status
