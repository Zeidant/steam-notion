FROM denoland/deno:1.44.4

WORKDIR /app
COPY . /app

RUN deno cache main.ts

CMD ["sh", "-c", "while true; do \
    echo \"\n==========================================================\"; \
    echo \"Update starting on $(date '+%B %d, %Y at %H:%M:%S')\"; \
    echo \"==========================================================\"; \
    deno run --allow-net --allow-read --allow-env main.ts; \
    echo \"\n==========================================================\"; \
    echo \"\nExecution finished at $(date '+%H:%M:%S'). Waiting 24 hours...\"; \
    sleep 86400; \
    done"]