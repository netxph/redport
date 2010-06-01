namespace :sessions do

  desc "Count database sessions"
  task :count => :environment do
    count = ActiveRecord::SessionStore::Session.count
    puts "Sessions stored: #{count}"
  end

  desc "Clear database-stored sessions older than two weeks"
  task :prune => :environment do
    ActiveRecord::SessionStore::Session.delete_all ['updated_at < ?', 24.hours.ago]
  end
end

