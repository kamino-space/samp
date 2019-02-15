FROM debian:8
WORKDIR /app
EXPOSE 7777

ENV RCON_PASSWORD=password

ADD env/sources.list /etc/apt/sources.list
ADD app/. .

RUN \
    apt update &&\
    apt install -y lib32stdc++6 &&\
    tar -zxvf samp*.tar.gz

CMD ["start-server.sh"]
ENTRYPOINT [ "sh" ]