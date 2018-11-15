# recreate_buckets.sh
# This script requires 1 parameter, the Couchbase administrator password

. ./settings

for b in customers orders
do
    echo "Deleting bucket $b..."
    curl -XDELETE ${cluster}/pools/default/buckets/$b -u Administrator:$pw
done

sleep 20

for b in customers orders
do
    qry='name='
    qry+=$b
    let "port += 1"
    echo "Creating bucket $b..."
    curl ${cluster}/pools/default/buckets -XPOST -d "$qry" -u Administrator:$pw  -v  -d authType=none -d ramQuotaMB=100
done

# sleep a bit more to allow bucket creation completion.
sleep 30

