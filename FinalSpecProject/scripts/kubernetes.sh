kubectl apply -f kubernetes/pass.yaml --context ProkectCluster.eu-west-2.eksctl.io
kubectl apply -f kubernetes/backend.yaml  --context ProkectCluster.eu-west-2.eksctl.io
kubectl apply -f kubernetes/frontend.yaml  --context ProkectCluster.eu-west-2.eksctl.io
kubectl apply -f kubernetes/mysql.yaml  --context ProkectCluster.eu-west-2.eksctl.io
kubectl apply -f kubernetes/nginx-configmap.yaml  --context ProkectCluster.eu-west-2.eksctl.io
kubectl apply -f kubernetes/nginx.yaml  --context ProkectCluster.eu-west-2.eksctl.io
sleep 10
kubectl get services 