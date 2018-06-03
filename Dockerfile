FROM golang:latest
MAINTAINER Liam Galvin <liamliam-galvin.co.uk>

RUN apt-get update
RUN apt-get install -y dejavu-* pulseaudio
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN dpkg -i google-chrome*.deb || apt-get install -f -y

