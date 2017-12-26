#!/bin/sh
# Never run at full priority, default to nice 10.
[ $(nice) -lt 1 ] && renice 10 $$ > /dev/null
R --quiet --no-save "$@"
