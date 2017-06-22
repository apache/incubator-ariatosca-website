#!/bin/bash
WORKDIR=/tmp/incubator-ariatosca-site
rm -rf $WORKDIR
mkdir -p $WORKDIR
export RUBY_PATH=~/shared/.rvm
export GEM_HOME=${RUBY_PATH}/gems
curl -sSL https://get.rvm.io | bash -s -- --path ${RUBY_PATH}
mkdir -p ${GEM_HOME}/gems
gem install  --install-dir ${GEM_HOME} bundler
export PATH=${GEM_HOME}/bin:$PATH
bundle install --path ${GEM_HOME}
bundle
bundle exec jekyll build --destination $WORKDIR $WORKDIR
git checkout asf-site
git clean -f -d
git pull origin asf-site
rm -rf *
cp -a $WORKDIR/* .
git add .
git commit -m "Automatic Site Publish by Buildbot"
git push origin asf-site
