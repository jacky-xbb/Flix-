class GenresController < ApplicationController
  before_action :require_login
  before_action :set_genre, only: %i[show]

  # GET /genres/:id
  def show
    @movies = @genre.movies
  end

  private

  def set_genre
    @genre = Genre.find(params[:id])
  end
end
