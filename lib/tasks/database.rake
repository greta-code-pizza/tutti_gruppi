# namespace :database do
#   desc 'standard commands'
#   task prepare: :environment do
#     %w[drop create migrate seed].each do |task|
#       Rake::Task["db:#{task}"].invoke
#     end
#   end
# end

namespace :db do
  desc "Rebuild database"
  task :db, [] => :environment do
    raise "Not allowed to run on production" if Rails.env.production?

    Rake::Task['db:drop'].execute
    Rake::Task['db:create'].execute
    Rake::Task['db:migrate'].execute
    Rake::Task['db:seed'].execute
  end
end