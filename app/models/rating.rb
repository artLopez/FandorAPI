# rating films
class Rating < ActiveRecord::Base
  belongs_to :film, foreign_key: 'film_id'
  validates :rating, inclusion: { in: 0..5 }
end
