#/bin/bash

# Starting the cluster

sudo kubeadm init --apiserver-advertise-address $API_SERVER_IP --pod-network-cidr 10.5.0.0/16

# vagrant will be the user that will be used to administer this cluster. 
# Copy the kubernetes-admin config file to your the home folder

mkdir -p /home/vagrant/.kube
sudo cp -i /etc/kubernetes/admin.conf $/home/vagrant/.kube/config
sudo chown vagrant:vagrant $HOME/.kube/config

sudo kubectl apply -f https://raw.githubusercontent.com/cloudnativelabs/kube-router/master/daemonset/kubeadm-kuberouter.yaml

#kubeadm token create --print-join-command
#Use ^ to generate a token to join the nodes to cluster

kubectl get nodes

kubectl get pods --all-namespaces
