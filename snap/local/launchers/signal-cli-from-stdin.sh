#!/bin/bash

$SNAP/signal-cli send --message-from-stdin $(<$SNAP_DATA/signal-cli-from-stdin.options)
