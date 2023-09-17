```bash
kubectl create clusterrole --verb=create --resource=Deployment,Statefulset,DaemonSet  deployment-clusterrole --dry-run=client -o yaml
```

```bash
 kubectl create sa cicd-token -n app-team1 --dry-run=client -o yaml
```

```bash
kubectl create clusterrolebinding crb --clusterrole=deployment-clusterrole --serviceaccount=namespace:sa --dry-run=client -o yaml
```