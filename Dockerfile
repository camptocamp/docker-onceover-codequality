FROM ruby:2.4.9-slim-buster

RUN apt -y update
RUN apt install -y git
RUN apt install -y python3-pip
RUN pip3 install pyyaml
RUN gem install onceover-codequality


