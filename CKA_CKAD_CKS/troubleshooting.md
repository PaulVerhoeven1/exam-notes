Nodes:

- kubectl get nodes

Log location

- /var/log/kube-apiserver.log
- /var/log/kube-scheduler.log
- /var/log/kube-controller-manager.log

On the node:

- journalctl -u kubelet


kubectl get pods -n kube-system

## get logs off important pods 

crictl ps -a

crictl logs <podname>