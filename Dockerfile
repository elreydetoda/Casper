FROM node:lts

COPY . /app
WORKDIR /app
RUN yarn
CMD [ "/usr/local/bin/yarn", "zip" ]
ENTRYPOINT [ "bash" ]
