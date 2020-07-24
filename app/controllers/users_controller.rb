class UsersController < ApplicationController

  get '/signup' do
    erb :'users/signup'
  end

  post '/signup' do
    @user = User.new(
      user_name: params[:user][:user_name], 
      password: params[:user][:password]
    )
    if @user.save
      session[:user_id] = @user.id
      redirect '/encounters'
    else
      erb :welcome
    end
  end 
end 