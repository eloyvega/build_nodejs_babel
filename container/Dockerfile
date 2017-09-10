FROM node:6.11.2

RUN apt-get update
RUN apt-get install -y build-essential

EXPOSE 3000

ENV USER app
ENV APP_HOME /opt/$USER

ADD app.tar $APP_HOME

WORKDIR $APP_HOME

RUN npm install --production

RUN useradd -d $APP_HOME $USER
RUN chown -R $USER:$USER $APP_HOME

USER $USER

ENTRYPOINT ["node", "index.js"]
