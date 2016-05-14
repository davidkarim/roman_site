class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      # binding.pry
      # redirect_to root_url, notice: 'Logged in!'
      if request.xhr?
        render '_login-state', layout: false, locals: { logged_in: "true" }
      end
    else
      # Failed Login
      if request.xhr?
        # render '_login-state', layout: false, locals: { logged_in: "false" }
        render :json => { :errors => "Bad login" }
      end
    end
  end

  def destroy
  end
end
