# Peak six
#peak6 

Instructions for PEAK6 DevOps Test

Given the attached app.py, please do the following:
1. Write a Dockerfile to package this flask Application as a container.
2. Write the necessary kubernetes manifests to deploy this container as a web application
3. Incorporate a dummy URL this application would respond on.

The output of this test would be a zip containing a Dockerfile and a set of yaml files.

NOTE: Treat this as introducing a new application into an already existing Kubernetes cluster that already has a number of other web applications already deployed. The Kubernetes files should be designed with Production quality, High Availability, and Scalability in mind.


## Peak6 application deployment

Using this documentaion you should be able to deploy Kubernets manifest with all integration.  

#### Existing data 
1. Namespaces: prod, qa, dev
2. Cluster-issuer: fsadykov-prod
3. Google Bucket:  peak6-fsadykov
4. Google Kubernetes Engiine
5. Ingress controlller 
6. External DNS with zone configurations


Versions
1. Terraform v0.11.14 
2. provider.helm v1.1.1
3. provider.local v1.4.0
4. provider.template v2.1.2

Kubernets v1.14.7
Ingress Controller 0.26.1
External DNS 0.5.17 

First step is you will need to clone the repo 
```
git clone git@github.com:fsadykov/peak6.git
cd peak6
```

Please follow the naming convention to be able to deploy this application
```
source set-env.sh configurations/NAMESPACE/NAMESPACE-peak6.tfvars
```

NOTE: `set-env.sh` script is responsible to configure your local and create all environment variables  example DATAFILE which is pointing to *.tfvars 

After `set-env.sh` script is finish successfully follow the command
```
terraform apply -var-file=$DATAFILE
```

Author: fsadykov
For Company: PEAK6