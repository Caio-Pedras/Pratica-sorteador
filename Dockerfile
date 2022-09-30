FROM node

WORKDIR /usr/src

COPY . .

RUN npm i 
RUN npx prisma generate
RUN npm run build

CMD [ "npm", "start" ]