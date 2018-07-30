FROM ruby:2.3.7
LABEL maintainer="germancastromontes@gmail.com"

RUN apt-get update -qq && apt-get install -y build-essential

ENV APP_HOME /app
ENV HOME /root
RUN mkdir $APP_HOME
WORKDIR $APP_HOME
COPY Gemfile* $APP_HOME/
RUN bundle install

# Upload source
COPY . $APP_HOME

ENV PORT 8080
EXPOSE 8080
CMD ["bundle", "exec", "thin", "-R", "config.ru", "-p", "8080", "-o", "'0.0.0.0'", "start"]
