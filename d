#!/bin/bash

rake assets:precompile RAILS_ENV=production
rake db:migrate RAILS_ENV=production
## ワーカーを再起動させる(ワーカー数は2つ)
#RAILS_ENV=production bin/delayed_job -n 3 restart
#whenever --update-crontab
touch tmp/restart.txt
