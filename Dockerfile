FROM ghcr.io/howaboutudance/iscore-website-content:main AS build

FROM nginx:latest AS deploy
EXPOSE 80
COPY --from=build /usr/src/app/build/. /usr/share/nginx/html
# COPY ./config/nginx.conf /etc/nginx/conf.d/default.conf