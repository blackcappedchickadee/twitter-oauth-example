class SessionsController < ApplicationController
  def create
    
    puts env['omniauth.auth'].to_yaml #env["omniauth.auth"] is what we get returned as a response...

    user = User.from_omniauth(env["omniauth.auth"]) 
    
    session[:user_id] = user.id
    redirect_to root_url, notice: "Signed in!"
    
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Signed out!"
  end
end