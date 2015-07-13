class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by_email(params[:email])
  	if user && user.authenticate(params[:password])
  		#save user id in browser cookie. keeps user logged in.
  		session[:user_id] = user.id
  		redirect_to '/'
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to '/login'
  end
end
