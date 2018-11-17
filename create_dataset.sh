# create_dataset.sh
. ./settings

echo "Create datasets and link them"
curl ${axqueryservice} -u Administrator:${pw} -XPOST -d "statement=create dataset on customers;"
curl ${axqueryservice} -u Administrator:${pw} -XPOST -d "statement=create dataset on orders;"
curl ${axqueryservice} -u Administrator:${pw} -XPOST -d "statement=connect link Local;"
echo "$0 - Done"
