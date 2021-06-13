#! /bin/bash

docker build -t yuan/gitbook:1.0.0  .

# docker run -ti -d yuan/gitbook:1.0.0 -p 4000:4000 -v ./:/gitbook /bin/bash --restart=always 
# docker exec -ti gitbook /bin/bash


# gitbook init
# https://stackoverflow.com/questions/64211386/gitbook-cli-install-error-typeerror-cb-apply-is-not-a-function-inside-graceful

# gitbook serve
# gitbook build

# gitbook action tutor   https://zlogs.net/gitbook-action/how-to-use#addaction
# mathjax https://github.com/kevinkangkang/gitbook-plugin-mathjax-pro
# npm install https://github.com/kevinkangkang/gitbook-plugin-mathjax-pro.git --save

# vim ~/.gitbook/versions/3.2.3/lib/output/website/copyPluginAssets.js  112行 改成false

# install plugin 到 source_book >> gitbook install 