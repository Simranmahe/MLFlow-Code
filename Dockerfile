FROM python:3.8.12-slim-buster
ENV http_proxy=http://genproxy.amdocs.com:8080 https_proxy=http://genproxy.amdocs.com:8080 no_proxy=localhost,127.0.0.1,.corp.amdocs.com
ENV MLFLOW_TRACKING_URI=http://ilcepoc2353:1235
#RUN apt-get update && apt-get -y install curl ssh procps vim htop nano git wget sqlite3 openssh-server

# PYTHON LIBS
RUN python3 -m pip install --upgrade pip
RUN pip3 install mlflow
RUN pip3 install mlflow[pipelines]
RUN pip3 install mlflow[extras]

WORKDIR /MLFlow
#ENTRYPOINT ["bash","setup.sh"]

#CMD ["mlflow","models","serve","-m","./","-h","0.0.0.0","-p","5000","--no-conda"]
EXPOSE 1235
