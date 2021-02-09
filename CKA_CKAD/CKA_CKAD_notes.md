**Show Kubernetes config:**

- kubectl config view

**Creating yaml file:** 

- Kubectl create deployment —dry-run —image=nginx —output=yaml newdep > newdep.yaml

**Scaling deployment**

- kubectl get deployments
- kubectl scale deployment \<deployment name\> —replicas=3
- Kubectl edit deployment \<deployment name\>

**Labels** 

- Kubectl get all —selector app=nginx

**StatefulSets:**

- Are using ordering and uniqueness of the name of the pod
- Always a service including with a stateful set
- Storage will not be deleted when statefulset get deleted

**DaemonSet:**

- ensuring that a pod is running on all the nodes
- Great for services that are running everywhere (monitoring daemons, log collectors etc)

**ConfigMap (create):**

- kubectl create cm test --from-literal=username=jan —dry-run -o yaml > test2.yaml
- Kubectl get cm test
- Kubectl describe cm test
- kubectl create cm test —from-file=test2.yaml

**Secret (create):**

- Kubectl create secret generic secret1 --from-literal=username=jan --from-literal=password=wachtwoord -o yaml --dry-run > secret.yaml’
- kubectl create secret generic secret1 —from-file=secret.yaml
- Kubectl get secret secret1
- Kubectl describe secret secret1



PVC (Persistant Volume Claim) -> Persistant Volume 

**Accessmodes Persistant volume:**

- ReadWriteOnce -- the volume can be mounted as read-write by a single node
- ReadOnlyMany -- the volume can be mounted read-only by many nodes
- ReadWriteMany -- the volume can be mounted as read-write by many nodes


**Networking Kubernetes:**

- Services: needed for static ip address to reach the right pod. You need to have a label on the pod or on the deployment!
- Nodeport: The service is exposed at each node’s IP address a static op address. The service can be reached from outside the cluster at nodeip:nodeport
- ClusterIP: The service is internally exposed and is reachable only from within the cluster
- Ingress -> Service -> Deployments / Pods 
- Ingress: mapping path to service port 

### Commandlets 

**Switch between clusters** 

- kubectl config use-context \<cluster-name\>

**Get the yaml file of an running container**

- kubectl get pod \<name\> -o yaml

**Start a container with a different command**

- kubectl run \<container\> --image=busybox --comand -it  -- \<command option\> 

**Get all the API versions:**

- kubectl get api-versions

**Vim:** 

- :set paste
- :set nopaste

