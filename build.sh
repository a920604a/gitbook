#! /bin/bash

docker build -t yuan/gitbook:1.0.0  .

# docker run -ti -d yuan/gitbook:1.0.0 -p 4000:4000 -v ./:/gitbook /bin/bash
# docker exec -ti gitbook /bin/bash


# gitbook init
# https://stackoverflow.com/questions/64211386/gitbook-cli-install-error-typeerror-cb-apply-is-not-a-function-inside-graceful

# gitbook serve 
# gitbook build

# gitbook action tutor   https://zlogs.net/gitbook-action/how-to-use#addaction