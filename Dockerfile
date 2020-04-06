FROM centos:7

#set work directory

WORKDIR /enrollment_app


#Set enviromental variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN yum -y update
RUN yum -y install epel-release
RUN yum -y install python-pip
COPY ./requirements.txt /enrollment_app/requirements.txt
RUN pip install -r requirements.txt
copy . /enrollment_app/

EXPOSE 5000

ENTRYPOINT ["python","application/app.py"]
