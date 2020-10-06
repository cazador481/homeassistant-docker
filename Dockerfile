FROM homeassistant/home-assistant:0.115.6
VOLUME /config

# fix bug where calendar only update very 15 minutes
RUN sed -i 's/minutes=15/minutes=1/' /usr/src/homeassistant/homeassistant/components/google/calendar.py
