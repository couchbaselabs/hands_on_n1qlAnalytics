# drop_dataset.sh
. ./settings

echo "Disconnect link and drop datasets"
curl ${axqueryservice} -u Administrator:${pw} -XPOST -d "statement=disconnect link Local;"
curl ${axqueryservice} -u Administrator:${pw} -XPOST -d "statement=drop dataset customers if exists;"
curl ${axqueryservice} -u Administrator:${pw} -XPOST -d "statement=drop dataset orders if exists;"
echo "$0 - Done"
