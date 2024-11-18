FROM registry.access.redhat.com/ubi8/ubi:8.1
RUN yum update -y &&  yum install -y python3 && yum install -y git && yum install python3-pip && mkdir /pyapp
ENV app=prod
LABEL appname="pyapp"
RUN chmod -R 777 /pyapp
RUN useradd -m vibish
USER vibish
COPY sample1.txt /tmp/
WORKDIR /pyapp
RUN git clone https://github.com/VibishnathanG/python-docker-example.git
WORKDIR python-docker-example
RUN pip3 install --user --no-cache-dir -r requirements.txt
EXPOSE 8000
ENTRYPOINT ["python3"]
CMD ["app.py"]