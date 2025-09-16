FROM golang:latest
LABEL maintainer "Pratham Joshi"

EXPOSE 8080

ARG RUN_FILE="main.go"
ARG WORK_DIR="/lobster"

RUN mkdir ${WORK_DIR}
COPY . ${WORK_DIR}/

WORKDIR ${WORK_DIR}

CMD go run ${RUN_FILE}