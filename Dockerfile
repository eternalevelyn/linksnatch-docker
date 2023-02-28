FROM ubuntu
COPY . /
RUN mkdir app
RUN apt-get -q update && apt-get -q install git
WORKDIR /app
RUN git clone https://github.com/amitmerchant1990/linksnatch
WORKDIR /app/linksnatch
RUN npm install
RUN touch entrypoint.sh
RUN echo "cd /app/linksnatch && npm run dev" > entrypoint.sh
ENTRYPOINT ["/app/linksnatch/entrypoint.sh"]
