kubectl apply -f kubernetes/pass.yaml 
kubectl apply -f kubernetes/backend.yaml
kubectl apply -f kubernetes/frontend.yaml 
kubectl apply -f kubernetes/mysql.yaml
kubectl apply -f kubernetes/nginx-configmap.yaml 
kubectl apply -f kubernetes/nginx.yaml 
sleep 10
kubectl get services 