class UsersController < ApplicationController
  before_action :require_login
  before_action :set_user, only: %i[show]

  def index
    @users = User.all
  end

  # GET /users/:id
  def show
    @favorite_movies = @user.favorite_movies
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
