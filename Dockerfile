FROM node:lts

COPY . /app
WORKDIR /app
RUN yarn install
CMD [ "yarn", "zip" ]
ENTRYPOINT [ "bash" ]
