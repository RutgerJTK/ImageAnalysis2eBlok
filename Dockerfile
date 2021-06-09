# Ubuntu as base image
FROM ubuntu

# Setting up the enviroment
RUN apt-get update --fix-missing
RUN apt install -y wget
RUN apt install -y python3.8
RUN apt-get install -y python3-pip

# Defining a working enviroment
WORKDIR /app

COPY requirements.txt /app/requirements.txt

RUN pip install -r requirements.txt

CMD ["jupyter nbconvert --to notebook --execute mynotebook.ipynb"]