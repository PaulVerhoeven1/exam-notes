## Drain the node
`kubectl drain <node> --ignore-daemonsets`

### Update kubeadm
`sudo apt update && sudo apt install -y kubeadm=<version>`

### Plan the upgrade
`kubeadm upgrade plan <version>`

### Upgrade
`kubeadm upgrade apply <version>`

### upgrade a node
`kubeadm upgrade node`

### kubelet and kubectl update
`sudo apt update && sudo apt install -y kubelet=<version> kubectl=<version>`

### daemon-reload and restart
```
sudo systemctl daemon-reload
sudo systemctl restart kubelet
```

### uncordon the node
`kubectl uncordon <node>`