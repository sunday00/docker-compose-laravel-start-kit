FROM node:latest

WORKDIR /home/server

RUN npm install -g json-server

COPY db.json /home/server/db.json
COPY alt.json /home/server/alt.json

EXPOSE 3010

ENTRYPOINT ["json-server", "--host", "0.0.0.0", "--port", "3010"]

CMD ["db.json"]