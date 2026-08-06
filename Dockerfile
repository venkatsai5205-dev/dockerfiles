ARG version
FROM almalinux:${version: -9}
RUN dnf install nginx -y
RUN dnf install git -y
RUN rm -rf /usr/share/nginx/html/index.html
COPY index.html /usr/share/nginx/html/index.html
ADD https://www.w3schools.com/ /usr/share/nginx/html/index.html
RUN chmod +r /usr/share/nginx/html/index.html
LABEL  class="x" \
       student="venkat"
RUN mkdir -p /var/lib/nginx/tmp \
    && chown -R nginx:nginx /var/lib/nginx \
    && chown -R nginx:nginx /var/log/nginx


RUN useradd venkat

USER venkat
ENV class="x" \
       student="venkat"

ARG LECTURER:"SAI"

RUN echo "HI this class is: ${class},student is: ${student}, Class teacher name: ${LECUTERER}"



 EXPOSE 80     
CMD ["sleep","1000"]