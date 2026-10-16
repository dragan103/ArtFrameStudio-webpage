FROM nginx:stable-alpine

COPY ["ArtFrame Studio website/", "/usr/share/nginx/html/"]

# The site has no index.html, so make the home page (indexglaven.html) the default
RUN cp /usr/share/nginx/html/indexglaven.html /usr/share/nginx/html/index.html

EXPOSE 80
