FROM debian:latest

RUN apt-get update && apt-get upgrade && apt-get install -y \
    npm
    git

RUN git clone https://github.com/UseInterstellar/Interstellar.git /app

WORKDIR /app

RUN npm i

EXPOSE 8080 

CMD ["npm run start"]
    
