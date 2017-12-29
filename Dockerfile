FROM ruby:2.4

ENV APP_ROOT /app

WORKDIR $APP_ROOT

RUN apt-get update\
		&& apt-get install -y nodejs

COPY admin_tool/Gemfile Gemfile
COPY admin_tool/Gemfile.lock Gemfile.lock
COPY api_server/app/models app/models

RUN bundle install -j4

COPY admin_tool $APP_ROOT

EXPOSE 3001

ENTRYPOINT ["bundle", "exec"]
CMD ["rails", "server", "-p", "3001", "-b", "0.0.0.0", "--pid", "/tmp/server.pid"]
