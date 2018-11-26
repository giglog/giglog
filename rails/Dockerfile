FROM ruby:2.5.3
ENV LANG C.UTF-8
# シェルスクリプトとしてbashを利用
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
# 必要なライブラリインストール
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev

# yarnパッケージ管理ツールインストール
RUN apt-get update && apt-get install -y curl apt-transport-https wget && \
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
  apt-get update && apt-get install -y yarn
# Node.jsをインストール
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - && apt-get install nodejs

# ワークディレクトリ設定
ENV ROOT_PATH /giglog
RUN mkdir $ROOT_PATH
WORKDIR $ROOT_PATH
ADD Gemfile $ROOT_PATH/Gemfile
ADD Gemfile.lock $ROOT_PATH/Gemfile.lock
RUN bundle install
ADD . $ROOT_PATH

#
RUN chmod a+x ./entrypoint.sh
RUN ./entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]
