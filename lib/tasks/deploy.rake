namespace :deploy do
  
  desc 'minimal deployment, usually used when updating the site'
  task 'minimal' do
    #cleanup
    rm_rf 'deploy'
    rm 'deploy.tar.gz', :force => true

    # create directories
    mkdir_p 'deploy/app'
    mkdir_p 'deploy/doc'
    mkdir_p 'deploy/db'
    mkdir_p 'deploy/config'
    mkdir_p 'deploy/lib'
    mkdir_p 'deploy/public'

    #deploy app
    cp_r 'app', 'deploy'
    
    #deploy doc
    cp_r 'doc', 'deploy'

    #deploy db
    cp_r Dir.glob('db/*.rb'), 'deploy/db'
    cp_r 'db/migrate', 'deploy/db'

    #deploy config
    cp_r Dir.glob('config/*.rb'), 'deploy/config'
    cp_r 'config/environments', 'deploy/config'
    cp_r 'config/initializers', 'deploy/config'
    cp_r 'config/locales', 'deploy/config'

    #deploy lib
    cp_r 'lib', 'deploy'

    #deploy public
    cp_r Dir.glob('public/*.{html,txt}'), 'deploy/public' 
    cp_r 'public/javascripts', 'deploy/public'
    cp_r 'public/stylesheets', 'deploy/public'

    #package
    sh 'tar zcvf deploy.tar.gz deploy'

  end

end
