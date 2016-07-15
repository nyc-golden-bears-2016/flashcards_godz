
get '/users/new' do

  erb :'users/new'

end

post '/users' do

  @user = User.new(params[:user])
  create_session

  if @user.save #saves new user or returns false if unsuccessful
    redirect "/users/#{@user.id}" #redirect back to users index page
  else
    @errors = @user.errors.full_messages
    erb :'users/new' # show new users view again(potentially displaying errors)
  end

end

get '/users/:id' do
  redirect '/' unless logged_in?

  @user = User.find(params[:id])
  erb :'users/show' #show single user view

end




