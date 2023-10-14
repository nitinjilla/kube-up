# kube-up
## Running Kubernetes cluster on Vagrant boxes

### Once the vagrant boxes are set up, you will have 3 machines:
1. MASTER NODE/API SERVER: cp (192.168.10.10)
2. WORKER NODES: wn-1, wn-2 (192.168.10.11, 192.168.10.12)

### 1. Clone the repository to your local machine
> git clone git@github.com:nitinjilla/kube-up.git

### 2. Switch to kube-up directory
> cd kube-up

### 3. Spin up the vagrant boxes This may take some time (around 10 mins(?))
> vagrant up

### 4. Log in to the master node
> vagrant ssh cp

Join the worker nodes to the K8s cluster

### 4. Check Kubernetes pods status
> kubectl get pods
