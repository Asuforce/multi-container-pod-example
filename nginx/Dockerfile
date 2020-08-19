FROM nginx:1.18.0

RUN mkdir /nginx-prometheus-exporter && \
    cd /nginx-prometheus-exporter && \
    curl -L -O https://github.com/nginxinc/nginx-prometheus-exporter/releases/download/v0.8.0/nginx-prometheus-exporter-0.8.0-linux-amd64.tar.gz && \
    tar xvf ./nginx-prometheus-exporter-0.8.0-linux-amd64.tar.gz && \
    rm -f ./nginx-prometheus-exporter-0.8.0-linux-amd64.tar.gz

COPY ./nginx.conf /etc/nginx/nginx.conf

RUN mkdir /app
COPY ./docker-entrypoint.sh /app/docker-entrypoint.sh

CMD ["/app/docker-entrypoint.sh"]
