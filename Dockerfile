FROM homeassistant/home-assistant:0.39.2
VOLUME /config

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN apt-get update -y && apt-get install netcat -y
