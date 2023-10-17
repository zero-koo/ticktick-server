FROM node:18
RUN mkdir -p /app
WORKDIR /app
COPY . .
RUN npm install
RUN npx prisma generate
RUN npm run build
EXPOSE 3000
CMD ["npm", "run", "start:migrate:prod"]