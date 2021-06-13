# Welcome to Microblog!

This is an example application featured in my [Flask Mega-Tutorial](https://blog.miguelgrinberg.com/post/the-flask-mega-tutorial-part-i-hello-world). See the tutorial for instructions on how to work with it.

- Containertizing the Flask Application using Minikube using below

<img width="1102" alt="Screenshot 2021-06-13 at 19 29 44" src="https://user-images.githubusercontent.com/29940821/121816817-0ebac980-cc7e-11eb-8c6d-1fc1fe38f568.png">



## Pre Requisites :
- Make sure your minikube is running.

## Running the Project

- Run the following files using "Kubectl apply -f amb-test ."
- To check the status of pod use : "Kubectl get pods"
- Make sure that all pods are in RUNNING state.
- To get the IP of the minikube, use "minikube ip"
- Hit this IP and you should be able to access the application.

## Travis Configuration

- Create account on Travis and make sure that the git repositiry is syned.
- Store the DOCKER_USERNAME and DOCKER_PASSWORD in the travis repository.
- Refer to below HLD of the pipelie :

<img width="771" alt="Screenshot 2021-05-24 at 12 20 10" src="https://user-images.githubusercontent.com/29940821/119333689-71760200-bc8a-11eb-9c22-40f0173e3a4e.png">

## Github Configuration

- Make sure that git repository is porperly initialised.
- After making code changes and pushing the code using "git push origin master", you should see a new build triggered in the Travis CI.




