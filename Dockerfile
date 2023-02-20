FROM ubuntu
COPY . /
RUN mkdir app
WORKDIR /app
RUN git clone https://github.com/amitmerchant1990/linksnatch
WORKDIR /app/linksnatch
RUN npm install
RUN touch entrypoint.sh
RUN echo "npm run dev" > entrypoint.sh
ENTRYPOINT ["/app/linksnatch/entrypoint.sh"]
