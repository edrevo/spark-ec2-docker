FROM python:2

MAINTAINER edrevo
LABEL description="A dockerized version of the Spark-EC2 script"
LABEL version="1.4.1.0"

RUN apt-get update && apt-get install -y rsync \
  && apt-get -y autoremove \
  && git clone https://github.com/apache/spark \
  && cd spark \
  && git checkout v1.4.1 \
  && cd ec2 \
  && python2 spark_ec2.py --version

COPY 'entrypoint.sh' './spark/ec2/entrypoint.sh'

RUN chmod +x ./spark/ec2/entrypoint.sh

WORKDIR spark/ec2/
ENTRYPOINT ["./entrypoint.sh"]
