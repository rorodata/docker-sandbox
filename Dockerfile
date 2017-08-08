FROM continuumio/anaconda3:4.3.1
MAINTAINER Anand Chitipothu <anand@rorodata.com>

RUN /opt/conda/bin/conda install -y --quiet tensorflow keras opencv jupyter
RUN pip install rorocloud firefly-python redis virtualenv

ENV PYTHONUNBUFFERED=x
ENV HOME=/data
WORKDIR /data

CMD ["/bin/bash"]
