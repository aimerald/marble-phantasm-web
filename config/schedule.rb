# coding: utf-8
# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
# ログの吐出口
set :output, "log/cron.log"

# Learn more: http://github.com/javan/whenever
every 66.days do
  command "sudo $HOME/certbot-auto renew"
end

every 1.minutes do
  command "echo hello world"
end
