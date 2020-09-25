FROM ubuntu:16.04

COPY deploy.sh /usr/src/hybris/
COPY start.sh /usr/src/hybris/
COPY hybrisServer-AllExtensions.zip /usr/src/hybris/
COPY hybrisServer-Config.zip /usr/src/hybris/
COPY hybrisServer-Licence.zip /usr/src/hybris/
COPY hybrisServer-Platform.zip /usr/src/hybris/
COPY roles.zip /usr/src/hybris/
COPY hybrisServerREADME.txt /usr/src/hybris/
COPY wait_for_mysql.sh wait_for_mysql.sh

RUN /usr/src/hybris/deploy.sh

EXPOSE 9001
EXPOSE 9002
EXPOSE 9997
EXPOSE 8000

CMD ["/bin/bash", "/usr/src/hybris/start.sh"]
