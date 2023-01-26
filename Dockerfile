FROM ubuntu:22.04

ENV TZ=Europe/Madrid
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

#Install libraries & packages
RUN apt-get update && apt-get install -y \
r-base \
r-cran-plumber

RUN mkdir /app
COPY server.R /app
COPY plumber.R /app
COPY iris.RDATA /app

EXPOSE 9000

CMD ["/app/server.R"]
