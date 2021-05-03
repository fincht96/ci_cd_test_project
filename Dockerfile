FROM node:12.13.0-alpine
RUN mkdir app
WORKDIR /app
RUN adduser -S app
COPY public/ .
COPY package.json .
RUN npm install
RUN chown -R app /app
USER app
EXPOSE 8080

CMD ["npm", "run", "start"]