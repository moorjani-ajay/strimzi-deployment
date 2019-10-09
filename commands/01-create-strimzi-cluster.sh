#Strimzi Operator installation
helm repo add dev http://strimzi.io/charts/
helm install dev/strimzi-kafka-operator

# create namespace dev
kubectl create namespace dev

# create panel with watch on dev namespace
watch kubectl get pod -n dev

# create simple-strimzi cluster
kubectl apply -f ./services/kafka-operator/kafka.dev.yaml
