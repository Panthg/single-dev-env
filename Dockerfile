FROM golang:latest
LABEL maintainer "Pratham Joshi"

ARG RUN_FILE="main.go"
ARG WORK_DIR="/lobster"

EXPOSE 8080

RUN mkdir ${WORK_DIR}
COPY . ${WORK_DIR}/

WORKDIR ${WORK_DIR}

CMD go run ${RUN_FILE}
