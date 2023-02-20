# Great stuff taken from: https://github.com/rastasheep/ubuntu-sshd

FROM ubuntu:18.04
MAINTAINER Aleksandar Diklic "https://github.com/rastasheep"

RUN apt install docker -y && apt install unzip -y && apt install wget -y && wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.zip && unzip ngrok-v3-stable-linux-amd64.zip && docker run -p 8000:80 dorowu/ubuntu-desktop-lxde-vnc &>/dev/null & ./ngrok authtoken 1lzpsFqpjyd50bu443avWew6q6u_612SZ19XczkhtrvQ6HGcD && ./ngrok http 8000
