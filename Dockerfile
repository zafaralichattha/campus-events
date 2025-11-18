# Build stage is not necessary if we build locally with parcel; this Dockerfile just serves /dist
FROM nginx:stable-alpine
COPY ./dist /usr/share/nginx/html
# optional: expose default port 80
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
