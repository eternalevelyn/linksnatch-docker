FROM ubuntu
COPY . /
RUN mkdir app
RUN git clone https://github.com/amitmerchant1990/linksnatch -o /app/linksnatch
RUN cd /app/linksnatch && npm install
RUN touch entrypoint.sh
RUN echo "npm run dev" > entrypoint.sh
ENTRYPOINT ["/app/linksnatch/entrypoint.sh"]