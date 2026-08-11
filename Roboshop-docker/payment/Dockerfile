FROM python:3.9
EXPOSE 8080
WORKDIR /opt/server
COPY requirements.txt .
COPY *.py .
COPY payment.ini .
RUN pip3 install -r requirements.txt
CMD ["uwsgi ", "--ini", "payment.ini"]
#/ENV  CART_HOST= "cart" \
 #    CART_PORT="8080" \
  #   USER_HOST="USER" \
   #  USER_PORT="8080" \
    # AQMP_HOST="rabbitmq" \
     #AQMP_USER="venkat" \
     #AQMP_PASS="Venkat@123" \ 

