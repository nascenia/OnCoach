json.array!(@exercise_categories) do |exercise_category|
  json.extract! exercise_category, :id, :name, :ancestry
  json.url exercise_category_url(exercise_category, format: :json)
end
