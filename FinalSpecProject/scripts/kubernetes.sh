kubectl apply -f kubernetes/pass.yaml --context ProkectCluster
kubectl apply -f kubernetes/backend.yaml --context ProkectCluster
kubectl apply -f kubernetes/frontend.yaml --context ProkectCluster
kubectl apply -f kubernetes/mysql.yaml --context ProkectCluster
kubectl apply -f kubernetes/nginx-configmap.yaml --context ProkectCluster
kubectl apply -f kubernetes/nginx.yaml --context ProkectCluster
sleep 10
kubectl get services --context ProkectCluster