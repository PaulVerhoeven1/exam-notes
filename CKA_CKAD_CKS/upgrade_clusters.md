
## **control-plane node**
```bash
## get the node
kubectl get nodes
## drain the node
kubectl drain <node> --ignore-daemonsets


## show kubeadm versions that are available to install
sudo apt update && apt-cache show kubeadm | grep Version
## Update kubeadm
sudo apt install -y kubeadm=<version>

kubeadm upgrade plan <version>
kubeadm upgrade apply <version>


sudo apt update && sudo apt install -y kubelet=<version> kubectl=<version>

### daemon-reload and restart
sudo systemctl daemon-reload
sudo systemctl restart kubelet

kubectl uncordon <node> --ignore-daemonsets
```
 
### upgrade a node
```bash
## get the node
kubectl get nodes
## drain the node
kubectl drain <node> --ignore-daemonsets


## show kubeadm versions that are available to install
sudo apt update && apt-cache show kubeadm | grep Version
## Update kubeadm
sudo apt install -y kubeadm=<version>

## upgrade the node
kubeadm upgrade node

sudo apt update && sudo apt install -y kubelet=<version> kubectl=<version>

### daemon-reload and restart
sudo systemctl daemon-reload
sudo systemctl restart kubelet

kubectl uncordon <node> --ignore-daemonsets
```


