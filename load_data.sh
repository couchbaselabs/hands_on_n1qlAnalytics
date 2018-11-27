#Load data
# This script requires 1 parameter, the Couchbase administrator password
# 
# This script assumes Couchbase bin directory is in path
#
. ./settings
os=`uname`
case $os in
     Linux)
        LOADER=/opt/couchbase/bin/cbimport
        ;;
     Darwin)
        LOADER=/Applications/Couchbase\ Server.app/Contents/Resources/couchbase-core/bin/cbimport
        ;;
     *)
        LOADER=cbimport
        ;;
esac

for b in customers orders
do
    echo "Populating bucket $b"
    "${LOADER}" json -u Administrator -p ${pw} -c ${host}:${clusterport} -b $b -d file://${b}.json \
      -g %thisdockey% -f lines
done

# import the two files into two buckets, orders and customers
# /opt/couchbase/bin/cbimport json -c couchbase://127.0.0.1 -g thisdockey -u Administrator -p password -b orders -d file://orders.json -f lines

# /opt/couchbase/bin/cbimport json -c couchbase://127.0.0.1 -g thisdockey -u Administrator -p password -b customers -d file://customers.json -f lines
