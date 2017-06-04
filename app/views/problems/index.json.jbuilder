json.array!(@problems) do |problem|
  json.extract! problem, :id, :name, :content, :section_id
  json.url problem_url(problem, format: :json)
end
