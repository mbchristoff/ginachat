#!/bin/bash

docker run -it -v $(pwd)/src:/app -w /app --entrypoint /bin/bash ginachat:latest