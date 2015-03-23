#! /bin/bash

sudo docker run -it -v $(pwd)/src:/home matrix-new-dev /home/compile-libevent.sh
