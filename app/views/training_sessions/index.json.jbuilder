json.array!(@training_sessions) do |training_session|
  json.extract! training_session, :id, :training_plan_id, :exercise_plan_id, :day
  json.url training_session_url(training_session, format: :json)
end
