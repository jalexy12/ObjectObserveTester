json.array!(@tweets) do |tweet|
  json.extract! tweet, :id, :user_id, :title, :text
  json.url tweet_url(tweet, format: :json)
end
