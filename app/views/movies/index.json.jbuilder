json.array!(@movies) do |movie|
  json.extract! movie, :id, :title, :released_year, :price, :description, :category_id
  json.url movie_url(movie, format: :json)
end
