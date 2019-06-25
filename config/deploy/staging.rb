# frozen_string_literal: true

set :stage, :staging
server '165.22.65.214', user: 'tutti', roles: %w[app db web]
set :branch, 'develop'
set :deploy_to, '/home/tutti/staging'
