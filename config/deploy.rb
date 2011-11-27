# START:require_bundler
require 'bundler/capistrano'
# END:require_bundler

# START:server
server "localhost", :app, :db, :primary => true
# END:server

# START:ssh_options
ssh_options[:port] = 2222
ssh_options[:keys] = "~/.rvm/gems/jruby-1.6.5/gems/vagrant-0.8.7/keys/vagrant"
# END:ssh_options

# START:user
set :user, "vagrant"
set :group, "vagrant"
set :use_sudo, false
# END:user

# START:application
set :deploy_to, "/home/vagrant/opt/trinidad"
set :application, "twitalytics"
set :repository, "."
set :scm, :none
set :deploy_via, :copy
set :copy_strategy, :export
set :copy_exclude, [".git", ".DS_Store", "log", "tmp", ".idea"]
# END:application

# START:environment
set :default_environment, 'PATH' => "/home/vagrant/opt/jruby/bin:$PATH"
set :bundle_dir, ""
set :bundle_flags, "--system --quiet"
# END:environment

# START:deploy
before "deploy:setup", "deploy:install_bundler"

namespace :deploy do
  task :install_bundler, :roles => :app do
    run "gem install bundler"
  end

  task :start, :roles => :app do
    run "/etc/init.d/trinidad start"
  end

  task :stop, :roles => :app do end

  task :restart, :roles => :app do
    run "touch #{current_release}/tmp/restart.txt"
  end
end
# END:deploy