require 'activerecord'
require 'yaml'
require File.join(RAILS_ROOT, *%w(app models part))
namespace :parts do
    task :list do
        Part.establish_connection(YAML.load_file(File.join(RAILS_ROOT, *%w(config database.yml)))[RAILS_ENV])
        Part.find(:all).each do |pt|
            puts "#{pt.id}: #{pt.name}"
        end
    end
end
