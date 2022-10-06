kubectl apply -f ./FinalSpecProject/kubernetes/pass.yaml 
kubectl apply -f ./FinalSpecProject.kubernetes/backend.yaml  
kubectl apply -f ./FinalSpecProject.kubernetes/frontend.yaml  
kubectl apply -f ./FinalSpecProject/kubernetes/mysql.yaml  
kubectl apply -f ./FinalSpecProject/kubernetes/nginx-configmap.yaml  
kubectl apply -f ./FinalSpecProject/kubernetes/nginx.yaml  
sleep 10
kubectl get services 