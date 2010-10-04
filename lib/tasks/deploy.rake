namespace :deploy do
  
  desc 'minimal deployment, usually used when updating the site'
  task 'minimal' do
    # create directories
    mkdir_p 'deploy/app'
    mkdir_p 'deploy/doc'
    mkdir_p 'deploy/db'
    mkdir_p 'deploy/config'

    cp_r 'app', 'deploy/app'
    
    cp_r 'doc', 'deploy/doc'

    cp_r Dir.glob('db/*.rb'), 'deploy/db'
    cp_r 'db/migrate', 'deploy/db/migrate'

    cp_r Dir.glob('config/*.rb'), 'deploy/config'
    cp_r 'config/environments', 'deploy/config/environments'
    cp_r 'config/initializers', 'deploy/config/initializers'
    cp_r 'config/locales', 'deploy/config/locales'

  end

end
