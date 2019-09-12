# config valid for current version and patch releases of Capistrano
lock '~> 3.11.0'

set :application, 'tutti'
set :repo_url, 'git@github.com:Kercode/tutti_gruppi.git'

# Default value for :linked_files is []
append :linked_files, 'config/database.yml', 'config/secrets.yml', 'config/emailing.yml', 'config/master.key'
# Default value for linked_dirs is []
append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system', 'public/uploads'