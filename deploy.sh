docker build -t nekosakanakaeru/multi-client:latest -t nekosakanakaeru/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t nekosakanakaeru/multi-server:latest -t nekosakanakaeru/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t nekosakanakaeru/multi-worker:latest -t nekosakanakaeru/multi-worker:$SHA -f ./worker/Dockerfile ./worker
docker push nekosakanakaeru/multi-client:latest
docker push nekosakanakaeru/multi-client:$SHA
docker push nekosakanakaeru/multi-server:latest
docker push nekosakanakaeru/multi-server:$SHA
docker push nekosakanakaeru/multi-worker:latest
docker push nekosakanakaeru/multi-worker:$SHA
kubectl apply -f k8s
kubectl set image deployments/server-deployment server=nekosakanakaeru/multi-server:$SHA
kubectl set image deployments/client-deployment client=nekosakanakaeru/multi-client:$SHA
kubectl set image deployments/worker-deployment worker=nekosakanakaeru/multi-worker:$SHA