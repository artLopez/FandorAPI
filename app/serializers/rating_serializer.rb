# Rating Serializer
class RatingSerializer < ActiveModel::Serializer
  attributes :id, :film_id, :user_id
end
