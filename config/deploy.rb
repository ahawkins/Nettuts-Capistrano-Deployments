set :application, "nettuts-demo"
set :repository,  "git://github.com/Adman65/Nettuts-Capistrano-Deployments.git"

set :user, :deployer

set :deploy_to, "/var/www/html/apps/#{application}"

set :use_sudo, false

set :scm, :git

role :web, "192.168.1.112"                          # Your HTTP server, Apache/etc
role :app, "192.168.1.112"                          # This may be the same as your `Web` server
role :db,  "192.168.1.112", :primary => true # This is where Rails migrations will run
role :db,  "192.168.1.112"

default_run_options[:pty] = true

namespace :deploy do
   task :start do ; end
   task :stop do ; end
   task :restart, :roles => :app, :except => { :no_release => true } do
     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
   end
   
   desc "Installs required gems"
   task :gems, :roles => :app do
     run "cd #{current_path} && sudo rake gems:install RAILS_ENV=production"
   end
   after "deploy:setup", "deploy:gems"   
   
   before "deploy", "deploy:web:disable"
   after "deploy", "deploy:web:enable"
end