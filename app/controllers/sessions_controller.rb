class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      # redirect_to root_url, notice: 'Logged in!'
      redirect_to root_url, notice: 'Logged in!'
      # if request.xhr?
      #   render '_login-state', layout: false, locals: { logged_in: "true" }
      # end
    else
      # Failed Login
      redirect_to root_url, notice: 'Please Try again'
      # if request.xhr?
      #   # render '_login-state', layout: false, locals: { logged_in: "false" }
      #   render :json => { :errors => "Bad login" }
      # end
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'Logged out!'
  end

end
