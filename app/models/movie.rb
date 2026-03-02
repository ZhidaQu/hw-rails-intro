class Movie < ApplicationRecord
  def self.all_ratings
    Movie.distinct.pluck(:rating).sort
  end
  def self.with_ratings(ratings_list)
    if ratings_list.present?
      Movie.where(rating: ratings_list)
    else
      Movie.all
    end
  end
end