json.array!(@training_plan_templates) do |training_plan|
  json.extract! training_plan, :id, :name
  json.url training_plan_url(training_plan, format: :json)
end
