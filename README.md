# WRK benchmark with lua script

## Deps

https://github.com/giltene/wrk2/wiki/Installing-wrk2-on-Linux

## How to setup

Update endpoint.txt for your test

## How to run

```sh
# cmd
make benchmark

```
**params**

|Name|Value|Default|Format|
|-|-|-|-|
|thread|logical threads used|12|int|
|duration|benchmark time|10s|int + s or m or h|
|connections|connections to keep open|10|int|
|workrate|thoughput in request/sec|100|int|
|host||string|http://localhost:8080/|
