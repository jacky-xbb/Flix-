class Movie < ApplicationRecord
  has_one_attached :image

  has_many :reviews, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :fans, through: :favorites, source: :user
  has_and_belongs_to_many :genres

  def flop?
    total_gross.blank? || total_gross < 225_000_000
  end

  def average_stars
    reviews.average(:stars)&.round(1) || 0.0
  end

  def reviews_count
    reviews.count
  end
end
