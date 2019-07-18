FROM alpine:latest

RUN mkdir /app
WORKDIR /app
ADD area-influencia /app/area-influencia

CMD ["./area-influencia"]