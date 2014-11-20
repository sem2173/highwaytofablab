#!/bin/sh

DIRECTION="git@heroku.com:highway-to-fablab.git"

echo "Deploiement sur heroku"

git pull origin master && echo "pull OK"
bundle exec rake && echo "bundle exec rake && OK"
git push origin master && echo "push on origin master OK"
git push $DIRECTION master && echo "push on $DIRECTION master OK"
heroku run rake db:migrate -a highwaytofablab echo "data base migration OK"

echo "********** OK **********"
