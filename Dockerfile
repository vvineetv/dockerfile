FROM ubuntu

ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt update
RUN apt-get install -y apache2
RUN apt install -y tzdata
ENTRYPOINT apachectl -D FOREGROUND
