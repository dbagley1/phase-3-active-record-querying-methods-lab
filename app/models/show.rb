class Show < ActiveRecord::Base
  # This method should return the highest value in the ratings column. Hint: if there is a .minimum Active Record method, might there be a .maximum method?
  def self.highest_rating
    Show.maximum(:rating)
  end

  # Returns the show with the highest rating.
  def self.most_popular_show
    Show.find_by(rating: highest_rating)
  end

  # Returns the lowest value in the ratings column.
  def self.lowest_rating
    Show.minimum(:rating)
  end

  # Returns the show with the lowest rating.
  def self.least_popular_show
    Show.find_by(rating: lowest_rating)
  end

  # Returns the sum of all of the ratings.
  def self.ratings_sum
    Show.sum(:rating)
  end

  # Returns a list of all of the shows that have a rating greater than 5. Hint: use the .where Active Record method.
  def self.popular_shows
    Show.where("rating > 5")
  end

  # Returns an array of all of the shows sorted in alphabetical order according to their names. Hint: use the .order Active Record method.
  def self.shows_by_alphabetical_order
    Show.order(:name)
  end
end
