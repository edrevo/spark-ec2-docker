@echo off
docker run -t -i -v /c/Users/<% PATH_TO_YOUR_SSH_KEY %>:/id_rsa -e AWS_ACCESS_KEY_ID=%AWS_ACCESS_KEY_ID% -e AWS_SECRET_ACCESS_KEY=%AWS_SECRET_ACCESS_KEY% --rm=true edrevo/spark-ec2-docker %*
