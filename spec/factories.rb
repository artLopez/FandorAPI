FactoryGirl.define do
  factory :film do
    title 'A Wonderful Film'
    description 'A cute film about lots of wonderful stuff.'
    url_slug 'a_wonderful_film'
    year 1973
  end

  factory :rating do
    rating 5
    film_id 1
  end
end
