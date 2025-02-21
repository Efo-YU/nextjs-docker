FROM node:latest

WORKDIR /app

COPY package.json /app
RUN npm install

EXPOSE 3000
# hot reloadを使わずにそのまま実行する場合
COPY . /app

# dockerfile単体で動かしたい場合は
CMD ["npm","run","dev"]

