FROM homeassistant/home-assistant:0.49.0
VOLUME /config

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
RUN apt-get update -y && apt-get install -y python-pip telnet netcat
RUN curl -sL https://deb.nodesource.com/setup_7.x |  bash -
RUN apt-get install -y nodejs
RUN pip2 install docopt
RUN npm install ps4-waker -g
