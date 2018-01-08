FROM jenkins/jenkins:lts
MAINTAINER elitcenkalp@gmail.com
USER root

# Install the latest Docker CE binaries
RUN apt-get update && \
    apt-get -y install apt-transport-https ca-certificates curl gnupg2 software-properties-common && \
    curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg > /tmp/dkey; apt-key add /tmp/dkey && \
    add-apt-repository \
      "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
      $(lsb_release -cs) \
      stable" && \
   apt-get update && \
   apt-get -y install docker-ce && \
   curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose && \
   sudo chmod +x /usr/local/bin/docker-compose

RUN apt-get update && apt-get install -y vpnc

# Setup vpnc service
RUN mkdir -p /etc/service/vpnc
COPY bin/vpnc.sh /etc/service/vpnc/run
RUN chmod 500 /etc/service/vpnc/run

# Clean up
RUN apt-get autoremove -y \
 && apt-get clean \
&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN sed -i -e 's/\r$//' /etc/service/vpnc/run

#RUN ["/etc/service/vpnc/run"]
#CMD /etc/service/vpnc/run
#CMD /etc/service/vpnc/run && /usr/local/bin/jenkins.sh