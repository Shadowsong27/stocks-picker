# stocks-picker
Some practice to get a better customized selection of stocks.

# Quick Start

Install docker, run the following

```
docker-compose up --scale worker=<X>
```

where X equals to the number of workers you want to spin up

# Local Dev

Install virutal environment using `pyenv`

Disucssion for `zlib` failure on Mojave please see: https://github.com/pyenv/pyenv/issues/1219

```
CFLAGS="-I$(brew --prefix readline)/include -I$(brew --prefix openssl)/include -I$(xcrun --show-sdk-path)/usr/include" \
LDFLAGS="-L$(brew --prefix readline)/lib -L$(brew --prefix openssl)/lib" \
PYTHON_CONFIGURE_OPTS=--enable-unicode=ucs2 \
pyenv install -v 3.6.7

pyenv virtualenv 3.6.7 sp-pipelines
pyenv activate sp-pipelines
```



