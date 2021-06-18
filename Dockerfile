FROM alpine:latest

WORKDIR /kubectl

RUN apk update && apk add curl git
RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

RUN chmod u+x kubectl && mv kubectl /bin/kubectl

ENTRYPOINT [ "/bin/kubectl" ]
