# Ubuntu as base image
FROM ubuntu

ENV DEBIAN_FRONTEND=noninteractive
ENV PYSPARK_MAJOR_PYTHON_VERSION=3

# Setting up the enviroment
RUN apt-get -o Acquire::Check-Valid-Until=false -o Acquire::Check-Date=false update && apt-get install -y --no-install-recommends apt-utils
RUN apt install -y wget
RUN apt install -y python3.8
RUN apt-get install -y python3-pip

# Defining a working enviroment
WORKDIR /app

COPY requirements.txt /app/requirements.txt
COPY mllib-hadoop.ipynb /app/mllib-hadoop.ipynb

RUN pip install -r requirements.txt

# Specifiek aan dit project
RUN apt-get -y install openjdk-11-jdk
RUN pip install -q findspark

CMD ["runipy", "mllib-hadoop.ipynb"]