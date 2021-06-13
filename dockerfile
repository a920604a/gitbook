FROM node:12-slim

MAINTAINER YU-AN, CHEN  "a920604a@gmail.com"


# Install Git, needed to publish to GitHub
RUN set -x \
    && apt-get update && apt-get --no-install-recommends --no-install-suggests -y install \
    vim git wget ssh-client rsync ca-certificates && rm -r /var/lib/apt/lists/*

RUN npm install gitbook-cli@2.1.2 --global


RUN npm install gitbook-plugin-flexible-alerts \
         gitbook-plugin-anchor-navigation-ex gitbook-plugin-edit-link gitbook-plugin-copy-code-button \
    gitbook-plugin-theme-comscore gitbook-plugin-ga gitbook-plugin-search-pro \
    gitbook-plugin-lunr gitbook-plugin-search gitbook-plugin-theme-faq \
    gitbook-plugin-theme-api gitbook-plugin-chapter-fold gitbook-plugin-expandable-chapters \
    gitbook-plugin-pageview-count  gitbook-plugin-splitter gitbook-plugin-custom-favicon \
    gitbook-plugin-todo gitbook-plugin-multipart gitbook-plugin-insert-logo \
    gitbook-plugin-back-to-top-button gitbook-plugin-code gitbook-plugin-github gitbook-plugin-page-treeview \
    gitbook-plugin-advanced-emoji gitbook-plugin-prism gitbook-plugin-tbfed-pagefooter \
    gitbook-plugin-auto-scroll-table gitbook-plugin-lightbox gitbook-plugin-lightbox \
    gitbook-plugin-flexible-alerts gitbook-plugin-flexible-alerts

RUN npm install https://github.com/kevinkangkang/gitbook-plugin-mathjax-pro.git --save

EXPOSE 4000

WORKDIR /gitbook
