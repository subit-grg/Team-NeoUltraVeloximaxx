kubectl apply -f kubernetes/pass.yaml --context arn:aws:eks:eu-west-2:131481335852:cluster/ProkectCluster
kubectl apply -f kubernetes/backend.yaml  --context arn:aws:eks:eu-west-2:131481335852:cluster/ProkectCluster
kubectl apply -f kubernetes/frontend.yaml  --context arn:aws:eks:eu-west-2:131481335852:cluster/ProkectCluster
kubectl apply -f kubernetes/mysql.yaml  --context arn:aws:eks:eu-west-2:131481335852:cluster/ProkectCluster
kubectl apply -f kubernetes/nginx-configmap.yaml  --context arn:aws:eks:eu-west-2:131481335852:cluster/ProkectCluster
kubectl apply -f kubernetes/nginx.yaml  --context arn:aws:eks:eu-west-2:131481335852:cluster/ProkectCluster
sleep 10
kubectl get services 