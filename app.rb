require("bundler/setup")
Bundler.require(:default)
enable :sessions

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }
require('pry')

helpers do
  def current_user
    if session[:user_id]
      Student.find { |u| u.id == session[:user_id] }
    else
      nil
    end
  end
end

get('/') do
  erb(:index)
end

post('/login') do
  user = Student.find { |u| u.name == params["user_name"] }
  if user && user.auth_pass(params["user_password"], user.password)
    session.clear
    session[:user_id] = user.id
    redirect("/")
  else
    @error = 'Username or password was incorrect.'
    erb(:error)
  end
end

get('/register') do
  erb(:register)
end

post('/register') do
  name = params['name']
  user_name = params['user_name']
  user_password = params['user_password']
  Student.create({name: name, username: user_name, password: user_password})
  redirect('/')
end

get('/signout') do
  session.clear
  redirect('/')
end
