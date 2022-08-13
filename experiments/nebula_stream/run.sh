#!/bin/bash
RESULTSPATH=/results #hardcoded
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
cd $SCRIPTPATH/../../library/simdjson
result=$RESULTSPATH/result.txt
echo -n "" > $result
for i in jsonexamples/tpch*; do
    [ -f "$i" ] || break
    echo "#"$i >> $result
    ./parse_stream $i >> $result
    echo -n "."
done
echo
