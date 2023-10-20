
https://jayendrapatil.com/certified-kubernetes-security-specialist-cks-learning-path/
### **CIS Benchmark / Kube-Bench**

```bash
## master node
wget https://github.com/aquasecurity/kube-bench/blob/main/job-master.yaml

## worker node
wget https://github.com/aquasecurity/kube-bench/blob/main/job-node.yaml


## with the CLI
kube-bench run --targets master
kube-bench run --targets master --check 1.3.2
```
And follow the recommendations 


**Secrets**
decode a secret on the fly
```bash
kubectl get secrets s3  -n two -ojsonpath="{.data.data}" | base64 -d
```
### **OPA Gatekeeper**
For enforcing policies and strengthen governance on Kubernetes. Works with ContraintTemplates which uses rego constraints templates.

A constraint attaches a constraint template alongside any parameters 

### **AppArmor**
```bash
## show which modules are loaded
aa-status

## load a module (enforce mode)
apparmor_parser <path>

## load a module (complain mode)
apparmor_parser <path> -C
```

Setting annotation on the pod
```yaml
metadata:
  annotations:
    container.apparmor.security.beta.kubernetes.io/<container_name>: localhost/<profile_name>
```


```bash
## verify if profile is correct loaded
crictl ps
crictl inspect <container_id> | grep apparmor
```

### **Falco**
Online course: https://learn.sysdig.com/falco-101
Falco is has a threat detection engine it does this with detection and prevention
Falco intercepts the syscalls going to the kernel and parses does calls and checks them agains the rules that are defined in the cluster.  It does this by installing a kernel module or driver (eBPF, Kernel module etc.). Rules are defined in yaml files. It can be installed on linux, docker, helm or build it from source. 

**Runtime security**
- detecting threats, misbehaviours and outages in rumtime 
- has 3 parts, events, rules and alerts

```bash
## Loading the rulesfile for falco
sudo falco -r <rule_file>

## show all possible conditions for falco
falco --list
```

### **Trivy**
Does do vulnerability image scanning
```bash
trivy image <image_name>
trivy image --severity HIGH,CRITICAL <image_name>
```

### **mTLS pod-to-pod encryption**
- First need to do a CSR (CertificateSingingRequest)

```bash
## approving the certificate
kubectl certificate approve <crs>

## view the certificate
kubectl get csr <certificate>

## get the certificate
kubectl get csr <certificate> -ojsonpath='{.status.certificate}' | base64 -d
```

### sandbox
- gVisor allows you to run containers in a sandbox, simulated kernel within the host OS
- Kata containers are lightweight VM's to run Kubernetes containers in.