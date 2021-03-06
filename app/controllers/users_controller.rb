class UsersController < ApplicationController

  def new
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @user = current_user
    # binding.pry
    if @user.update(user_params)
      @success = 1
      # binding.pry
      redirect_to root_url

    else
      @success = 0
      # binding.pry
      redirect_to root_url
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.permit(:email, :avatar, :video_url)
    end

end
