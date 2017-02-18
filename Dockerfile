FROM docker

RUN apk update &&\
      apk upgrade &&\
      apk --update add \
      bash \
      ca-certificates \
      git \
      libstdc++ \
      openssh \
      ruby \
      ruby-bigdecimal \
      ruby-bundler \
      ruby-io-console \
      ruby-irb \
      ruby-json \
      ruby-rake \
      tzdata \
      && \
      echo 'gem: --no-document' > /etc/gemrc

RUN gem install thor pry httparty octokit
