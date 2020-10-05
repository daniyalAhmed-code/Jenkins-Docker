# Base image
FROM ubuntu

RUN /bin/bash -c "echo this would generally be apt-get"
ENV myCustomEnvVar="This is a sample." \
    otherEnvVar="This is also sample."