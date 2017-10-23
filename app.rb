require("bundler/setup")
Bundler.require(:default)
enable :sessions

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }
require('pry')

helpers do
  def current_user
    if session[:user_id]
      Player.find { |u| u.id == session[:user_id] }
    else
      nil
    end
  end
end

get('/') do
  erb(:index)
end

post('/login') do
  user = Students.find { |u| u.user_name == params["user_name"] }
  if user && user.auth_pass(params["user_password"], user.user_password)
    session.clear
    session[:user_id] = user.id
    redirect("/")
  else
    @error = 'Username or password was incorrect.'
    erb(:error)
  end
end

get('/register') do
  name = params['name']
  user_name = params['user_name']
  user_password = params['user_password']
  Students.create({name: name, user_name: user_name, user_password: user_password})
  erb(:login)
end

get('/signout') do
  session.clear
  redirect('/')
end
