FROM 314451195721.dkr.ecr.cn-northwest-1.amazonaws.com.cn/amazonlinux:2023
RUN yum install python pip -y
COPY webapp.py requirements.txt /opt
WORKDIR /opt
RUN pip install -r requirements.txt
CMD python webapp.py
