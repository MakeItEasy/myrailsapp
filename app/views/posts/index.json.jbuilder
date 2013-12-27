json.array!(@posts) do |post|
  json.extract! post, :title, :body
  json.url post_url(post, format: :json)
  json.test "aaa"
end

