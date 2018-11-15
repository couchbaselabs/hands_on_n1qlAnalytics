# create_indexes.sh
. ./settings

# create indexes
curl ${queryservice} -u Administrator:${pw} -XPOST -d "create primary index on customers;"
curl ${queryservice} -u Administrator:${pw} -XPOST -d "create primary index on orders;"
echo "$0 - Done"
