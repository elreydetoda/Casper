FROM node:lts

COPY . /app
WORKDIR /app
RUN yarn install
RUN echo
CMD [ "/usr/local/bin/yarn", "zip" ]
ENTRYPOINT [ "bash" ]
