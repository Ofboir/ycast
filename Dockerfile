FROM python:3-alpine

RUN pip install --no-cache-dir --root-user-action ignore --upgrade pip && \
    pip install --no-cache-dir --root-user-action ignore \
    flask \
    pillow \
    pyyaml \
    requests \
    ycast

ENV YCAST_LISTENING_ADDRESS=
ENV YCAST_LISTENING_PORT=
ENV YCAST_STATIONS_LIST=

WORKDIR /app
COPY entrypoint.sh .
RUN chmod +x /app/entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh"]