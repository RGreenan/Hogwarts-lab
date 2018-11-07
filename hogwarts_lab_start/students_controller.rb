require('sinatra')
require('sinatra/contrib/all')
require_relative('models/student')
require_relative('models/house')
also_reload('./models/*')

# index
get '/students' do
  @students = Student.all
  erb(:index)
end


# new
get '/students/new' do
  erb(:new)
end

# show
get '/students/:id' do
  @student = Student.find(params['id'])
  erb(:show)
end


# edit
get 'students/edit' do
  @student = Student.find(params[:id])
  erb(:edit)
end

# create
  post '/students' do
    Student.new(params).save()
    redirect to 'students'
  end

# update

# destroy
