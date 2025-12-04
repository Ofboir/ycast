#!/bin/sh

CMD="python -m ycast"

if [ -n "$YCAST_LISTENING_ADDRESS" ]; then
  CMD="$CMD -l $YCAST_LISTENING_ADDRESS"
fi

if [ -n "$YCAST_LISTENING_PORT" ]; then
  CMD="$CMD -p $YCAST_LISTENING_PORT"
fi

if [ -n "$YCAST_STATIONS_LIST" ]; then
  CMD="$CMD -c $YCAST_STATIONS_LIST"
fi

echo "Command: $CMD"
exec $CMD