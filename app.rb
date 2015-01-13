require('sinatra')
require('sinatra/reloader')
also_reload('./lib/**/*.rb')
require('./lib/todo')

get("/") do
  @tasks = Task.all()
  erb(:index)
end

post("/todo") do
  @description = params.fetch('description')
  Task.new(@description)
  erb(:confirmation)
end
