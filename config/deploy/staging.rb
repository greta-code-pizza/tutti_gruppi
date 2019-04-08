# frozen_string_literal: true

set :stage, :staging
server '207.154.242.168', user: 'tutti', roles: %w[app db web]
set :branch, 'develop'
set :deploy_to, '/home/tutti/staging'
