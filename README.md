# krakend-gateway

## Docker
### build docker image
```sh
# /krakend-gateway>
docker rm -f krakend-gateway || true && \
		docker rmi -f \$(docker images -q krakend-gateway) || true && \
			docker build --build-arg ENV=dev -t krakend-gateway . && \
				docker run -d -p 8080:8080 --name krakend-gateway krakend-gateway
```
or you can use phony target
```sh
# /krakend-gateway>
make run_docker_gateway
```

## K8S - Deployment
### run namespace once
```sh
# /krakend-gateway>
kubectl apply -f /k8s-manifests/namespace.yaml # create namespaces
kubectl apply -f /k8s-manifests/deployment.yaml # deployment
kubectl apply -f /k8s-manifests/service.yaml # service
```

### Kubernetes Network Topology
![Screenshot](etc/kubernetes-network-topology.drawio.png?raw=true)