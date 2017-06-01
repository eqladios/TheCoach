json.array!(@chapters) do |chapter|
  json.extract! chapter, :id, :number, :name, :image, :topics, :finished
  json.url chapter_url(chapter, format: :json)
end
