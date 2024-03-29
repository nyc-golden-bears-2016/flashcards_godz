
get '/users/new' do

  erb :'users/new'

end


post '/users/login' do

 user = User.find_by(username: params[:username])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect "/users/#{user.id}"
  else
    @errors = ["Username or password incorrect."]
    erb :'index'
  end

end



get '/users/logout' do
  session.clear
  redirect '/'
end


post '/users' do

  @user = User.new(params[:user])

  if @user.save #saves new user or returns false if unsuccessful
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}" #redirect back to users index page
  else
    @errors = @user.errors.full_messages
    erb :'users/new' # show new users view again(potentially displaying errors)
  end

end

get '/users/:id' do
  redirect '/' unless logged_in?


  erb :'users/show' #show single user view

end


get '/users/:id/stats' do
  redirect '/' unless logged_in?

  

  erb :'users/stats' #show single user view

end


