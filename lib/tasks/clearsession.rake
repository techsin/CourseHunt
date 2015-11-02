namespace :db do
    namespace :sessions do
        desc "Clear ActiveRecord sessions"
        task :clear => :environment do
            sql = 'DROP sessions;'
            ActiveRecord::Base.connection.execute(sql)
        end
    end
end