json.array!(@muscles) do |muscle|
  json.extract! muscle, :id, :name, :muscle_group_id
  json.url muscle_url(muscle, format: :json)
end
