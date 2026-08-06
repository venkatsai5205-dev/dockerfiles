FROM almalinux:9
RUN dnf install nginx -y
RUN rm -rf /usr/share/nginx/html/index.html
COPY index.html /usr/share/nginx/html/index.html
ADD https://www.w3schools.com/ /usr/share/nginx/html/index.html
RUN chmod +r /usr/share/nginx/html/index.html
LABEL  class:"x" \
       student:"venkat"

 EXPOSE 80     
CMD ["nginx","-g","daemon off;"]