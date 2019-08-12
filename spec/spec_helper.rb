
require "project"
require "rspec"
require "pry"
require "pg"

DB = PG.connect({:dbname => 'project_tracker_test'})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec('DELETE FROM projects *;')
  end
end
