json.array!(@exercises) do |exercise|
  json.extract! exercise, :id, :name, :type, :description, :image, :youtube_video_link, :calories
  json.url exercise_url(exercise, format: :json)
end
