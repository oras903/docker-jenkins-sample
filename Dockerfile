FROM ubuntu
MAINTAINER James Turnbull "james@example.com"
ENV REFRESHED_AT 2016-06-01
RUN apt-get -o Acquire::http::proxy="http://10.213.210.67:1234"  update
RUN apt-get -o Acquire::http::proxy="http://10.213.210.67:1234" -y install ruby rake
RUN gem install  --http-proxy http://10.213.210.67:1234 --no-rdoc --no-ri rspec ci_reporter_rspec
