# Ubuntu as base image
FROM ubuntu

# Setting up the enviroment
RUN apt-get -o Acquire::Check-Valid-Until=false -o Acquire::Check-Date=false update
RUN apt install -y wget
RUN apt install -y python3.8
RUN apt-get install -y python3-pip

# Defining a working enviroment
WORKDIR /app

COPY requirements.txt /app/requirements.txt
COPY guide.ipynb /app/guide.ipynb

RUN pip install -r requirements.txt

CMD ["runipy", "guide.ipynb"]