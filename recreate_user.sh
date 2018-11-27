. ./settings

CBPATH=/Applications/Couchbase\ Server.app/Contents/Resources/couchbase-core/bin/

"$CBPATH"/couchbase-cli user-manage -c ${host}:${clusterport} \
  -u Administrator -p ${pw} \
  --delete --rbac-username tutorial --auth-domain local

"$CBPATH"/couchbase-cli user-manage -c ${host}:${clusterport} \
  -u Administrator -p ${pw} \
  --set --rbac-username tutorial --rbac-password tutorial \
  --roles analytics_reader --auth-domain local
