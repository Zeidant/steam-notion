FROM denoland/deno:1.44.4

WORKDIR /app

COPY . /app

RUN deno cache main.ts

CMD ["run", "--allow-net", "--allow-read", "main.ts"]


