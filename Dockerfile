FROM 757656574143.dkr.ecr.us-east-1.amazonaws.com/amazonlinux:2023
RUN yum install python pip -y
COPY webapp.py requirements.txt /opt
WORKDIR /opt
RUN pip install -r requirements.txt
CMD python webapp.py
