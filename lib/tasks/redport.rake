desc 'initialize project after clone'
task :setup do
  puts 'Preparing files'
  cp 'config/database.yml.template', 'config/database.yml'
  puts 'run {bundle install} then {rake db:migrate}'
end
