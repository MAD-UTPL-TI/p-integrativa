FROM gitpod/workspace-java-11

RUN curl https://www.apache.org/dyn/closer.lua?path=/nifi/1.19.1/nifi-1.19.1-bin.zip -o nifi.zip
RUN sudo apt-get update \
    && sudo apt-get install cowsay -y
RUN mkdir -p /home/gitpod/utpl
RUN unzip nifi.zip -d /home/gitpod/utpl/
RUN rm -f nifi.zip