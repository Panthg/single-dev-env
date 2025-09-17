FROM golang:latest
LABEL maintainer "Pratham Joshi"

ARG RUN_FILE="main.go"
ARG WORK_DIR="/lobster"

RUN mkdir $WORK_DIR
COPY . ${WORK_DIR}/

EXPOSE 8080

WORKDIR $WORK_DIR

CMD go run main.go
