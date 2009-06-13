namespace :dev do

  desc "Rebuild system"
  task :build => ["tmp:clear","db:drop", "db:create", "db:migrate", :setup ]
  
  desc "Setup system data"
  task :setup => :environment do

  end

end
