class TrainingSession < ActiveRecord::Base
  belongs_to :training_plan
  has_many :exercises
  has_many :exercise_plan
end
