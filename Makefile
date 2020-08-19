# nginx
docker-build-nginx-local:
	docker build -t localhost:5000/multi-container-pod-example-nginx:latest ./nginx
docker-push-nginx-local: docker-build-nginx-local
	docker push localhost:5000/multi-container-pod-example-nginx:latest

# app
gradlew-clean-build:
	./gradlew --no-daemon clean build
docker-build-app-local: gradlew-clean-build
	docker build -t localhost:5000/multi-container-pod-example-app:latest .
docker-push-app-local: docker-build-app-local
	docker push localhost:5000/multi-container-pod-example-app:latest

# kubectl apply/delete/get
kubectl-create-example:
	kubectl apply -f ./manifests -R
kubectl-delete-example:
	kubectl delete -f ./manifests -R
kubectl-get:
	kubectl get deployment -o wide
	kubectl get svc -o wide
	kubectl get pod -o wide
