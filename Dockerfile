FROM homeassistant/home-assistant
VOLUME /config
VOLUME /myq

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN apt-get update -y && apt-get install netcat -y
