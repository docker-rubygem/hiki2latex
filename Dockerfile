FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.9.9

RUN gem install hiki2latex --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["hiki2latex"]
CMD ["--help"]
