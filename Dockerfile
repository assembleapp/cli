FROM docker

RUN apk update &&\
      apk upgrade &&\
      apk --update add \
      ruby \
      ruby-irb \
      ruby-rake \
      ruby-io-console \
      ruby-bigdecimal \
      ruby-json \
      ruby-bundler \
      libstdc++ \
      tzdata \
      git \
      bash \
      ca-certificates \
      && \
      echo 'gem: --no-document' > /etc/gemrc

RUN gem install thor pry
