FROM alpine
RUN apk add --no-cache ca-certificates && update-ca-certificates
ADD https://get.aquasec.com/microscanner .
RUN chmod +x microscanner
RUN ./microscanner MmUzZjkwMGFhNjE2
RUN apt-get install -y nodejs
ADD .  /code
WORKDIR /code
RUN npm install
EXPOSE  8080
ENTRYPOINT ["nodejs", "./index.js"]
