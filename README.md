# UCLNLP FNC-1 Submission

This folder contains a dockerfile and the modified [uclnlp](https://mr.cs.ucl.ac.uk/)'s submission to
the 2017 [Fake News Challenge](http://www.fakenewschallenge.org/). The original
code can be found here on [Github](https://github.com/uclnlp/fakenewschallenge).
The readme there explains enough about how it works.

## Setup

While in this directory, run:
```
    docker build -t fnc:uclnlp . 
```

This will build the docker image. Next, start the container with:
```
    docker run -d --name fnc-uclnlp -p 13221:13221 fnc:uclnlp
```

This will host a grpc service in the container accessible through port 13221. To
test the service there's an example script
[grpc_test_client.py](./fakenewschallenge/grpc_test_client.py)
