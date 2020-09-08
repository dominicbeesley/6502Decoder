#!/bin/bash

LIBS="-lm"

if [[ $OS = *"Windows"* ]]; then
  LIBS="$LIBS -largp"
fi

gcc -std=c99 -Wall -O3 -D_GNU_SOURCE -o decode6502 src/main.c src/em_6502.c src/profiler.c src/profiler_instr.c src/profiler_block.c src/profiler_call.c $LIBS
