
#require 'mongrel_cluster/recipes'
set :application, "townofmassanutten.org"
set :user, "towno1"
set :repository,  "git@github.com:authentic/townofmassanutten.org.git"
set :branch, "master"
set :use_sudo, false
set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`
set :deploy_to, "towno1/public_html/olgahauze"
role :web, "localhost:80"                          # Your HTTP server, Apache/etc
role :app, "localhost:80"                          # This may be the same as your `Web` server
role :db,  "localhost:80", :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end