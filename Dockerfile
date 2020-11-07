FROM node:lts

COPY . /app
WORKDIR /app
RUN yarn install
CMD [ "/usr/local/bin/yarn", "zip" ]
ENTRYPOINT [ "bash" ]
