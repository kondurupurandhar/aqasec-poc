FROM alpine
RUN apk add --no-cache ca-certificates && update-ca-certificates
ADD https://get.aquasec.com/microscanner .
RUN chmod +x microscanner
RUN ./microscanner MmUzZjkwMGFhNjE2
RUN apk update && apk add nodejs nodejs-npm
ADD .  code
RUN pwd;ls code
WORKDIR code/code
RUN npm install
EXPOSE  8080
ENTRYPOINT ["node", "./index.js"]

