FROM        debian:12.8-slim

ARG         U_NAME U_PASS U_ID

RUN         apt-get update \
            && apt-get install -qy \
                sudo \
                default-jre

RUN         useradd -u ${U_ID} -m ${U_NAME} \
            && echo ${U_NAME}:${U_PASS} | chpasswd \
            && usermod -aG sudo ${U_NAME}

WORKDIR     /app/

USER        ${U_NAME}