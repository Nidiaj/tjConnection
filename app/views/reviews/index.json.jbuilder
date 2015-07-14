json.array!(@reviews) do |review|
  json.extract! review, :id, :author, :content
  json.url review_url(review, format: :json)
end
