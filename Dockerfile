##
# andrejreznik/python-gdal
#
# Debian 9.4 Stretch
FROM debian:latest
MAINTAINER Andrey Reznik <andrey.reznik.ce@gmail.com>

ENV PYTHON_VERSION 3.6.5
ENV PYTHON_PIP_VERSION 10.0.1
ENV GDAL_DAILY_URL http://www.gdal.org/daily/

ENV ROOTDIR /usr/local/src/python-gdal

# Copy installing scripts
ADD ./scripts ${ROOTDIR}/

# Compile and install Python, pip, GDAL, python bindings
RUN ${ROOTDIR}/install-python.sh && ${ROOTDIR}/install-gdal.sh

CMD python3 -V && pip -V && gdalinfo --version
