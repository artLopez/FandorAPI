# Film class with filtering and sorting capabilities
class Film < ActiveRecord::Base
  has_many :ratings
  attr_accessor :average_rating
  serialize :related_film_ids, Array
  paginates_per 15

  scope :after_year, ->(year) { where('year > ?', year) }
  scope :before_year, ->(year) { where('year < ?', year) }
  scope :between_years, lambda { |start_year, end_year|
    where('year >= ?', start_year).where('year <= ?', end_year)
  }

  scope :search_by_title, lambda { |film_title|
    where('title like ?', "%#{film_title}%")
  }

  scope :chronological, -> { order('year asc') }
  scope :recent, -> { order('year desc') }

  def average_rating
    ratings.average(:rating)
  end
end
