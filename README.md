# k8s-gke

This is a simple Node + React app created only for cloud deployment practice.  

It allows to count a Fibonacchi value, and stores computed values in postgres and redis.  

Pipeline: Travis CI  
Deployment: Google Kubernetes Engine  

### https
Doesn't work with provided code. Only http is awailable to test this app in kubernetes cluster, for this purpose use code from this commit:
https://github.com/lougheevian/k8s-gke/tree/2eba814a4bae32bbf4581a1faba1a1dff8c72cc3
Required steps:
- create kubernetes cluster in google cloud
- in Travis CI create env variables $DOCKER_LOGIN and $DOCKER_PASSWORD
- Travis CI starts deploying on commit to master branch
- in google cloud console you need to set password for PostgreSQL database, use the command `kubectl create secret generic pgpassword --from-literal PGPASSWORD=<YOUR_PASSWORD>`
