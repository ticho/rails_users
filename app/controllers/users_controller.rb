class UsersController < ApplicationController
  # needed to initialize @errors
  def new
    @errors = []
  end

  def create
    user = User.create(
      username: params[:username],
      bio: params[:bio]
    )
    # if there was an error, display them, otherwise redirect to homepage
    if user.errors.any?
      @errors = user.errors
      render :new
    else
      redirect_to root_path 
    end
  end

  def show
    # trying to figure out if the parameter is an integer or a string, not a good way
    if params[:id].to_i.to_s == params[:id]
      @user = User.find(params[:id])
    else
      @user = User.find_by(username: params[:id])
    end
  end

  # pass all users to the view
  def all
    @users = User.all
  end
end