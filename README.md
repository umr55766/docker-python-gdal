# :whale: python-gdal 
#### Python + GDAL/OGR Docker image

Get and compile latest CPython 3.6.5 and GDAL 2.3.0 sources from their official repositories.

#### Usage

Output versions of Python, pip and GDAL

```bash
$ docker run umr55766/python_gdal:1.0.1

Python 3.6.5
pip 18.1 from /usr/local/lib/python3.6/site-packages/pip (python 3.6)
GDAL 2.3.0, released 2018/09/21
```

Run container and start an interactive bash session as root 

```bash
$ docker run -it umr55766/python_gdal:1.0.1
```
