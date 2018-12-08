FROM FROM node:8
RUN apk add --no-cache ca-certificates && update-ca-certificates
ADD https://get.aquasec.com/microscanner .
RUN chmod +x microscanner
RUN ./microscanner MmUzZjkwMGFhNjE2
ADD .  /code
WORKDIR /code
RUN npm install
EXPOSE  8080
ENTRYPOINT ["nodejs", "./index.js"]
