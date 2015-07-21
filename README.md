# SparkEC2 docker

This is a dockerized version of the Spark-EC2 script, which will allow you to
run the script in Windows (without Cygwin) or from any other environment as long
as you have [Docker](www.docker.com).

## Installation

The Docker image is part of the Docker Hub (it can be found
[here](https://registry.hub.docker.com/u/edrevo/spark-ec2-docker/)) so you only
need to pull the image from docker:

```powershell
docker pull edrevo/spark-ec2-docker
```

## Usage

### The hard way

The manual way of running the docker is with the following command-line:

```powershell
docker run -t -i -v /c/Users/<% PATH TO YOUR SSH KEY %>:/id_rsa -e AWS_ACCESS_KEY_ID="<% YOUR AWS ID%>" -e AWS_SECRET_ACCESS_KEY="<% YOUR AWS SECRET %>" edrevo/spark-ec2-docker <% ARGUMENTS FOR SCRIPT %>
```

### The easy way

In order to simplify the execution, you can download the
[batch script](https://raw.githubusercontent.com/edrevo/spark-ec2-docker/master/spark-ec2.bat),
edit it to add your AWS credentials and SSH key, and place it in your PATH.

Once you have done that, you can start using the spark-ec2 script directly:

```powershell
.\spark-ec2.bat launch -s 4 -t c3.4xlarge -r eu-west-1 -k test "my-test-cluster"
```

The only difference is you don't need to pass the SSH key path or configure any
AWS environment variables, since that was already configured in the batch file.
