FROM homeassistant/home-assistant:0.40
VOLUME /config

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN apt-get update -y && apt-get install telnet netcat -y
