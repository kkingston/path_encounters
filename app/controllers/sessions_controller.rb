class SessionsController < ApplicationController
    get '/login' do
        erb :'/users/login'
    end

    post '/login' do 
        @user = User.find_by_user_name(params[:user][:user_name])
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id 
            redirect '/encounters'
        else
            erb :'/users/login'
        end
    end 

    get '/logout' do
        session.clear
        redirect '/'
    end
end 