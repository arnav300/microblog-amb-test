docker build -t arnav30/microblog:latest -f Dockerfile .

docker push arnav30/microblog:latest


docker build -t arnav30/microblog:latest -t arnav30/microblog:$SHA -f ./client/Dockerfile ./client
docker build -t arnav30/microblog:latest -t arnav30/microblog:$SHA -f ./server/Dockerfile ./server
docker build -t arnav30/microblog:latest -t cygnetops/multi-worker-k8s:$SHA -f ./worker/Dockerfile ./worker

docker push cygnetops/multi-client-k8s:latest
docker push cygnetops/multi-server-k8s-pgfix:latest
docker push cygnetops/multi-worker-k8s:latest

docker push cygnetops/multi-client-k8s:$SHA
docker push cygnetops/multi-server-k8s-pgfix:$SHA
docker push cygnetops/multi-worker-k8s:$SHA

kubectl apply -f k8s
kubectl set image deployments/server-deployment server=cygnetops/multi-server-k8s-pgfix:$SHA
kubectl set image deployments/client-deployment client=cygnetops/multi-client-k8s:$SHA
kubectl set image deployments/worker-deployment worker=cygnetops/multi-worker-k8s:$SHA

#Need to create a secret using Kubectl command in imperative way to store in GCP
