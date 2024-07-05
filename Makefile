.PHONY: run_docker_gateway

run_docker_gateway:
	docker rm -f krakend-gateway || true && \
		docker rmi -f \$(docker images -q krakend-gateway) || true && \
			docker build --build-arg ENV=dev -t krakend-gateway . && \
				docker run -d -p 8080:8080 --name krakend-gateway krakend-gateway
