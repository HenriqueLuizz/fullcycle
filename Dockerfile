FROM golang:latest

WORKDIR /app

COPY /home/runner/work/fullcycle/fullcycle/lab-ci/go .

RUN go env -w GO111MODULE=off

RUN go build -o math

CMD [ "./math" ]