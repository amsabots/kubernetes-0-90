FROM node:17-alpine3.12 as Builder

WORKDIR /build

COPY *.json /build/


FROM Builder as Installer
RUN npm install

RUN npm install -g typescript 


FROM Installer

WORKDIR /app
COPY --from=Installer /build /app/
COPY src /app/
RUN tsc && ls -a

EXPOSE 6700

CMD [ "npm","start" ]
