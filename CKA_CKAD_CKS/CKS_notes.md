
### **CIS Benchmark / Kube-Bench**

```bash
## master node
wget https://github.com/aquasecurity/kube-bench/blob/main/job-master.yaml

## worker node
wget https://github.com/aquasecurity/kube-bench/blob/main/job-node.yaml
```
And follow the recommendations 

### **OPA Gatekeeper**
For enforcing policies and strengthen governance on Kubernetes

### **AppArmor**
```bash
aa-status
apparmor_parser

```
``
### **Falco**
Online course: https://learn.sysdig.com/falco-101
Falco is has a threat detection engine it does this with detection and prevention
Falco intercepts the syscalls going to the kernel and parses does calls and checks them agains the rules that are defined in the cluster.  It does this by installing a kernel module or driver (eBPF, Kernel module etc.). Rules are defined in yaml files. It can be installed on linux, docker, helm or build it from source. 


**Runtime security**
- detecting threats, misbehaviours and outages in rumtime 
- has 3 parts, events, rules and alerts


### **Trivy**
Does do vulnerability image scanning
```bash
trivy image <image_name>
trivy image --severity HIGH,CRITICAL <image_name>
```


mTLS pod-to-pod encyrption
