#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/linsun/XilinxLab/uram/proj_sum_io/solution1/.autopilot/db/a.g.bc ${1+"$@"}
