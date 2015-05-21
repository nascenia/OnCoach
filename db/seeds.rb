User.find_or_create_by(email: "user@oncoach.com") do |user|
  user.password = "12345678"
end

Coach.find_or_create_by(email: "coach@oncoach.com") do |user|
  user.password = "12345678"
end

Admin.find_or_create_by(email: "admin@oncoach.com") do |user|
  user.password = "12345678"
end