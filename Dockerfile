FROM skandyla/wrk

WORKDIR /app

COPY . .

CMD ["wrk -t12 -d10s -c100 -R100 -s running.lua http://localhost:8080/"]