FROM alpine
MAINTAINER mactkg

# install node
RUN apk update && \
    apk --no-cache add nodejs make python g++ gcc

# install dependencies
WORKDIR /app
COPY package.json /app
RUN npm install --production

COPY . /app
VOLUME ["/app"]

CMD ["npm", "start"]
