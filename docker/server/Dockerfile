FROM samp-runtime:latest
MAINTAINER fiki574 <fiki8796@hotmail.com>

EXPOSE 7777/udp
WORKDIR /var/samp

RUN git clone https://github.com/fiki574/SAMP-Docker-Server.git ./git && \
    cp -r ./git/* . && \
    rm -rf ./git && \ 
    rm -rf ./.git && \
    rm -rf ./docker && \
    chmod +x samp-npc samp03svr announce

ENTRYPOINT [ "./samp03svr" ]
