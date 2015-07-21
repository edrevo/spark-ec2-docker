@echo off
docker run -t -i -v /c/Users/<% PATH TO YOUR SSH KEY %>:/id_rsa -e AWS_ACCESS_KEY_ID="<% YOUR AWS ID%>" -e AWS_SECRET_ACCESS_KEY="<% YOUR AWS SECRET %>" spark-ec2 %*
