
[![CircleCI](https://dl.circleci.com/status-badge/img/gh/nenyeonyema/project-ml-microservice-kubernetes/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/nenyeonyema/project-ml-microservice-kubernetes/tree/main)

## A Machine Learning Microservice API. 


### Project Overview
This project operationalizes a machine learning microservice api using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. 
#### Repo content
* A .circleci folder with a config.yml file runs and checks the repo code for errors.
* Makefile installs project dependencies which are listed in requirements.txt file using the make install command.
* Model data  folder is the data source of our application.
* Dockerfile builds  images automatically by reading the instructions from it. 
* app.py file is the source code for the application.
* output_txt_files folder with docker_out.txt and kubernetes_out.txt files  for log output for docker and kubernetes predictions.
* run_docker.sh runs our Dockerfile locally
* upload_docker.sh uploads a docker image to docker hub.
* run kubernetes.sh deploys a docker container with kubernetes
* make_prediction.sh makes predictions by sending some input data to the containerized application via the appropriate port.

---

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv

python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies.
* Run `make lint` to lint Makefile.
* Run `hadolint Dockerfile` to lint the Dockerfile.

### Running `app.py` This is application file

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

