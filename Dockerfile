##
# umr55766/python_gdal
#
# Debian 9.6 Stretch
FROM debian:latest
MAINTAINER Mohammad Umair <umr55766@gmail.com>

# Latest stable varions
ENV PYTHON_VERSION 3.6.5
ENV PYTHON_PIP_VERSION 18.1
ENV GDAL_VERSION 2.3.0

ENV ROOTDIR /usr/local/src/python-gdal

# Compile and install Python, pip
ADD ./scripts/install-python.sh ${ROOTDIR}/
RUN ${ROOTDIR}/install-python.sh

# Compile and install GDAL, python bindings
ADD ./scripts/install-gdal.sh ${ROOTDIR}/
RUN ${ROOTDIR}/install-gdal.sh

CMD python3 -V && pip -V && gdalinfo --version
