#!/bin/sh

DIRECTION="git@heroku.com:highway-to-fablab.git"

echo "Deploiement sur heroku"

git pull origin master && \
bundle exec rake && \
git push origin master && \
git push $DIRECTION master && \
heroku run rake db:migrate -a highwaytofablab

echo "********** OK **********"
