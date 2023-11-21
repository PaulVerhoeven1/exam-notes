### Get all the paths
`cat /etc/kubernetes/manifest/etcd.yaml`

get the endpoints and ca, key, cert paths
`cat /etc/kubernetes/manifests/etcd.yaml | grep kubernetes`
### Make a backup with etcdctl

```bash
etcdctl snapshot save <name>.db --cacert <location> --cert <location> --key <location>
```

### Restore a backup with etcdctl

```bash
systemctl stop etcd
mv /var/lib/etcd /var/lib/etcd.bak

etctctl snapshot restore <snapshot>.db --data-dir /var/lib/etcd --initial-cluster <endpoint>  --initial-advertise-peer-urls <peer_urls> --cacert <location> --cert <location> --key <location>

## example:
sudo etcdctl snapshot restore ../etcd_backup.db --cacert=etcd-ca.pem --cert=etcd-server.crt --key=etcd-server.key --initial-cluster etcd-restore=https://10.0.1.101:2380 --initial-advertise-peer-urls=https://10.0.1.101:2380 --name=etcd-restore --data-dir /var/lib/etcd

systemctl start etcd
systemctl reload kubelet
```

