json.array!(@targeted_muscles) do |targeted_muscle|
  json.extract! targeted_muscle, :id, :exercise_id, :muscle_id, :primary
  json.url targeted_muscle_url(targeted_muscle, format: :json)
end
