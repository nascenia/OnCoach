class Exercise < ActiveRecord::Base
  mount_uploader :image, AvatarUploader
  belongs_to :exercise_category
  has_many :exercise_sessions
  has_many :targeted_muscles
  has_many :muscles, :through => :targeted_muscles

  accepts_nested_attributes_for :muscles

  has_many :primary_targeted_muscles, -> {primary}, :class_name => 'TargetedMuscle'
  has_many :primary_muscles, :through => :primary_targeted_muscles, :source => :muscle

  has_many :secondary_targeted_muscles, -> {secondary}, :class_name => 'TargetedMuscle'
  has_many :secondary_muscles, :through => :secondary_targeted_muscles, :source => :muscle
end
