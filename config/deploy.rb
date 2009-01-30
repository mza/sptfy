set :application, "sptfy"
set :git_user, "mza"
set :url, "sptfy.com"
set :instance, "ec2-174-129-240-55.compute-1.amazonaws.com"

set :scm, "git"
set :repository, "git@github.com:#{git_user}/#{application}.git"
set :branch, "master"
set :user, "root"
set :deploy_to, "/var/rails/#{application}"
set :scm_verbose, true
set :passenger_root, "/usr/lib/ruby/gems/1.8/gems/passenger-2.0.6"

ssh_options[:forward_agent] = true
ssh_options[:keys] = ["#{ENV['HOME']}/.ec2/id_rsa-gsg-keypair"]
default_run_options[:pty] = true

role :app, "#{instance}"
role :web, "#{instance}"
role :db,  "#{instance}", :primary => true