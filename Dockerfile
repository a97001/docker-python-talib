FROM python:3.6.8

WORKDIR /usr/src/app

COPY requirements.txt ta-lib-0.4.0-src.tar.gz install_talib.sh ./

RUN tar -xzf ta-lib-0.4.0-src.tar.gz && cd ta-lib/ && ./configure --prefix=/usr && make && make install && cd .. && pip install --no-cache-dir -r requirements.txt