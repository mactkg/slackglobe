FROM alpine
MAINTAINER mactkg

# install node
WORKDIR /app
RUN apk update && \
    apk --no-cache add nodejs
RUN npm install --production

ADD . /app
VOLUME ["/app"]

CMD ["/app/node_modules/.bin/coffee", "index.coffee"]
