FROM ubuntu:14.04

# Install necessary packages
RUN apt-get update && apt-get -y install software-properties-common ruby1.9.3 haproxy patch make

# Install Smartstack gems (Synapse + Nerve)
RUN gem install synapse nerve

# Enable HAProxy
RUN echo "ENABLED=1" > /etc/default/haproxy

# Add startup scripts
ADD *.sh /opt/