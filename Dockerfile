FROM continuumio/anaconda3:4.3.1
MAINTAINER Anand Chitipothu <anand@rorodata.com>

RUN /opt/conda/bin/conda install jupyter -y --quiet
ENV PYTHONUNBUFFERED=x
EXPOSE 8000-9000

pip install tensorflow

CMD ["/bin/bash"]
