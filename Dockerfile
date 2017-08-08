FROM continuumio/anaconda3:4.3.1
MAINTAINER Anand Chitipothu <anand@rorodata.com>

RUN /opt/conda/bin/conda install -y --quiet tensorflow keras opencv jupyter
RUN pip install rorocloud firefly-python redis virtualenv flit
# clone the flok repository before running docker build.
COPY flok /tmp/flok
RUN cd /tmp/flok && FLIT_ROOT_INSTALL=1 flit install && rm -rf /tmp/flok

ENV PYTHONUNBUFFERED=x
ENV HOME=/data
WORKDIR /data

CMD ["/bin/bash"]
