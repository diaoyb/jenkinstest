FROM redocly/redoc:v2.0.0

COPY ./resources/ /usr/share/nginx/html/

ENV PAGE_TITLE="IOBScan OpenAPI Doc"
#ENV PAGE_FAVICON="swagger/favicon.ico"
ENV SPEC_URL="openapi.yaml"
ENV REDOC_OPTIONS="hide-download-button=true \ disable-search=true"

EXPOSE 80

CMD ["sh", "/usr/local/bin/docker-run.sh"]
