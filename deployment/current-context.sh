kubectl config set-credentials kube-admin --certificate-authority=/etc/kubernetes/ssl/ca.pem --client-key=/etc/kubernetes/ssl/kube-admin-key.pem --client-certificate=/etc/kubernetes/ssl/kube-admin.pem
kubectl config set-cluster default --server=https://<master vip or domain>:6443 --certificate-authority=/etc/kubernetes/ssl/ca.pem
kubectl config set-context kube-admin --cluster=default --user=kube-admin
kubectl config use-context kube-admin
kubectl config view
