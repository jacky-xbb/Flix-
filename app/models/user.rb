class User < ApplicationRecord
  include Clearance::User

  has_many :reviews, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :favorite_movies, through: :favorites, source: :movie

  def favorited?(movie)
    favorite_movies.include?(movie)
  end
end
