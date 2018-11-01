FROM openresty/openresty:latest

COPY bin/entrypoint.sh /usr/local/bin/openresty-entrypoint.sh

COPY nginx/conf /usr/local/openresty/nginx/conf
COPY nginx/lualib /usr/local/openresty/nginx/lualib-common
COPY nginx/static /usr/local/openresty/nginx/static

ENTRYPOINT /usr/local/bin/openresty-entrypoint.sh
