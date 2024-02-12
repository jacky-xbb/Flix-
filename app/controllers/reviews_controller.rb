class ReviewsController < ApplicationController
  before_action :require_login
  before_action :set_movie, only: %i[index new create]

  # GET /movies/:movie_id/reviews
  def index
    @reviews = @movie.reviews
  end

  # GET /movies/:movie_id/reviews/new
  def new
    @review = @movie.reviews.new
  end

  # POST /movies/:movie_id/reviews
  def create
    @review = @movie.reviews.build(review_params)
    @review.user = current_user
    if @review.save
      redirect_to movie_reviews_path(@movie), notice: 'Thank you for your review!'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_movie
    @movie = Movie.find(params[:movie_id])
  end

  def review_params
    params.require(:review).permit(:stars, :comment)
  end
end
