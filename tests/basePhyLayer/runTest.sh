#/bin/bash

export PATH="$PATH:../../src:../../../inet/src:../../../omnetpp/bin"

../tests -c Test1 > out.tmp
../tests -c Test2 >> out.tmp
../tests -c Test6 >> out.tmp
../tests -c Test7 >> out.tmp

diff -I '^Assigned runID=' -I '^Loading NED files from' -w exp-output out.tmp

rm -f out.tmp
