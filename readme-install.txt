Install dependencies on ubuntu 16.04
------------------------------------
sudo add-apt-repository -y ppa:deadsnakes/ppa
sudo apt-get update
sudo apt-get install -y python3.6-venv python3.6-dev
sudo apt-get install libudev-dev

add users and groups
--------------------
sudo adduser --system --group homeassistant
sudo usermod -aG dialout homeassistant
sudo usermod -aG homeassistant jo

add directories and change permissions
--------------------------------------
mkdir venv logs
sudo chown homeassistant:homeassistant venv logs config
sudo chmod g+s venv logs config

install homeassistant in python venv
------------------------------------
bin/suhass bash bin/install-homeassistant.sh

test run
--------
bin/hass
bin/appdaemon

and when everything is ready
----------------------------
sudo bin/deploy-systemd-files
sudo systemd enable homeassistant appdaemon
