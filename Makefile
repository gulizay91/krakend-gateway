.PHONY: run_docker_gateway

run_docker_gateway:
	docker rm -f krakend-gateway || true && \
		docker rmi -f \$(docker images -q krakend-gateway) || true && \
			docker build -t krakend-gateway . && \
				docker run -d -p 8080:8080 -e ENV=dev --name krakend-gateway krakend-gateway



