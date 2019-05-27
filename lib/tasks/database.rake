namespace :database do
  desc 'standard commands'
  task prepare: :environment do
    %w[drop create migrate seed].each do |task|
      Rake::Task["db:#{task}"].invoke
    end
  end
end
