FROM mirakc/mirakc:debian

# wgetのインストール
RUN apt-get update && apt-get install -y wget

# recisdbのインストール
RUN wget https://github.com/kazuki0824/recisdb-rs/releases/download/1.2.2/recisdb_1.2.2-1_amd64.deb && \
    apt-get install -y ./recisdb_1.2.2-1_amd64.deb && \
    rm ./recisdb_1.2.2-1_amd64.deb

# ISDBScannerのインストール
RUN wget https://github.com/tsukumijima/ISDBScanner/releases/download/v1.1.6/isdb-scanner -O /usr/local/bin/isdb-scanner && \
    chmod +x /usr/local/bin/isdb-scanner
