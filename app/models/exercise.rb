class Exercise < ActiveRecord::Base
  mount_uploader :image, AvatarUploader
  belongs_to :exercise_category
  has_many :exercise_sessions
  has_many :targeted_muscle
end
