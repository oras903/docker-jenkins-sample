FROM centos:latest
MAINTAINER James Turnbull "james@example.com"
ENV REFRESHED_AT 2016-06-01
ENV http_proxy http://10.213.211.119:1234
RUN yum -y install ruby rubygems rubygem-rake
RUN gem install --http-proxy http://10.213.211.119:1234 --no-rdoc --no-ri rspec ci_reporter_rspec
