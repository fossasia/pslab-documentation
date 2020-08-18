FROM python:3.8

WORKDIR /docs
COPY requirements.txt ./
RUN pip3 install --disable-pip-version-check --no-cache-dir -r requirements.txt\
    && rm -rf /tmp/pip-tmp