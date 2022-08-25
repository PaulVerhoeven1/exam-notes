**nodeSelector:** to limit on which node the pod can be scheduled on. Node selectors use node labels to filter suitable nodes.

example:

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: nginx
  labels:
    env: test
spec:
  containers:
  - name: nginx
    image: nginx
    imagePullPolicy: IfNotPresent
  nodeSelector:   # <--
    disktype: ssd   # <--
```

Appy label to node:

- kubectl lobel nodes <node_name> disktype=ssd

Create a pod that gets scheduled to specific node

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: nginx
spec:
  nodeName: foo-node # schedule pod to specific node
  containers:
  - name: nginx
    image: nginx
    imagePullPolicy: IfNotPresent

```


