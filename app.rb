require('sinatra')
require('sinatra/reloader')
require('./lib/project')
require('pry')
also_reload('lib/**/*.rb')
require("pg")

DB = PG.connect({:dbname => "project_tracker"})

get ('/') do
  @projects = Project.all
  erb(:index)
end

get ('/new_project') do
  erb(:new_project)
end

get ('/projects') do
  redirect to('/')
end
