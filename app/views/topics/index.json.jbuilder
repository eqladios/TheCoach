json.array!(@topics) do |topic|
  json.extract! topic, :id, :number, :title, :htmlContent, :chapterID
  json.url topic_url(topic, format: :json)
end
