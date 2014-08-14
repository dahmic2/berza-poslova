json.array!(@problems) do |problem|
  json.extract! problem, :id, :title, :content, :user, :category, :status, :posted, :additional
  json.url problem_url(problem, format: :json)
end
