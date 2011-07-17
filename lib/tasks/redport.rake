desc 'copy files for deploy'
task :deploy do
  rm_rf 'deploy'
  mkdir_p 'deploy/redport'
  cp_r 'app', 'deploy/redport', :verbose => true
  cp_r 'config', 'deploy/redport', :verbose => true
  cp_r 'db', 'deploy/redport', :verbose => true
  cp_r 'public', 'deploy/redport', :verbose => true
end
