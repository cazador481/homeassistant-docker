FROM homeassistant/home-assistant:latest
VOLUME /config

# fix bug where calendar only update very 15 minutes
RUN sed -i 's/minutes=15/minutes=1/' /usr/src/homeassistant/homeassistant/components/google/calendar.py

#https://github.com/craigbarratt/hass-pyscript-jupyter
pip install hass_pyscript_kernel
