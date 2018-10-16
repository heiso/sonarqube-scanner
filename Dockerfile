FROM openjdk:8-jdk-alpine

ENV VERSION 3.2.0.1227

RUN apk add --no-cache wget nodejs && \
    wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-${VERSION}.zip && \
    unzip sonar-scanner-cli-${VERSION}

WORKDIR /sonar-scanner-${VERSION}/bin

ENTRYPOINT [ "./sonar-scanner" ]
