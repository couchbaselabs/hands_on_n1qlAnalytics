# drop_indexes.sh
# This script requires 1 parameter, the Couchbase administrator password
#

. ./settings

# drop indexes
curl ${queryservice} -u Administrator:${pw} -XPOST -d "drop primary index on customers;"
curl ${queryservice} -u Administrator:${pw} -XPOST -d "drop primary index on orders;"
echo "$0 - Done"

