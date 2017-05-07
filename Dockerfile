FROM homeassistant/home-assistant:0.44
VOLUME /config

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN apt-get update -y && apt-get install -y python-pip telnet netcat nodejs npm
RUN pip2 install docopt
RUN npm install ps4-waker -g
