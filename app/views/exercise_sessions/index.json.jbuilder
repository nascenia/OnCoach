json.array!(@exercise_sessions) do |exercise_session|
  json.extract! exercise_session, :id, :exercise_plan_id, :exercise_id, :phase, :intensity, :repetitions, :num_of_series, :resting_period
  json.url exercise_session_url(exercise_session, format: :json)
end
