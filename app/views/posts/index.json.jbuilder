json.array!(@posts) do |post|
  json.extract! post, :id, :name, :age, :comment
  json.url post_url(post, format: :json)
end
