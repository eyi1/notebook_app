task :start do
    exec 'foreman start -p 3000'
  end

# bundle exec rake db:create