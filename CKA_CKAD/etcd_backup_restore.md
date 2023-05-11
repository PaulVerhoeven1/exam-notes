### Get all the paths
`cat /etc/kubernetes/manifest/etcd.yaml`

### Make a backup with etcdctl

`etcdctl snapshot save <name>.db --cacert <location> --cert <location> --key <location> `

### Restore a bacup with etcdctl
`etctctl snapshot restore <snapshot>.db --data-dir /var/lib/ecd --endpoints <endpoint> --cacert <location> --cert <location> --key <location> `