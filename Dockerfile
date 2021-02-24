FROM  node:15.10.0-alpine3.10

RUN mkdir /code
WORKDIR /code

COPY . /code
RUN chmod a+rx ./start.sh

ENV NUXT_ENV=development
ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=3000

EXPOSE 3000

CMD ["./start.sh"]
