class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
      if user && user.authenticate(params[:session][:password])
        log_in user #method in sessions_helper for user_url(user) converted to route 
        params[:session][:remember_me] == '1' ? remember(user) : forget(user)
        redirect_to user
        # log the user in and redirect to the user's show page
      else
        # create an error message
        flash.now[:danger] = 'Invalid Username/Password combination'
        render 'new'
      end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
