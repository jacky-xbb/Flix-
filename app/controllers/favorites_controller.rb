class FavoritesController < ApplicationController
  before_action :require_login
  before_action :find_movie, only: [:create]
  before_action :find_favorite, only: [:destroy]

  def create
    @favorite = @movie.favorites.new(user: current_user)
    if @favorite.save
      redirect_to @movie, notice: 'Thanks for favoriting!'
    else
      redirect_to @movie, alert: 'Unable to favorite'
    end
  end

  def destroy
    @favorite.destroy
    redirect_to @movie, notice: 'Movie unfavorited!'
  end

  private

  def find_movie
    @movie = Movie.find(params[:movie_id])
  end

  def find_favorite
    @favorite = current_user.favorites.find(params[:id])
    @movie = @favorite.movie
  end
end
