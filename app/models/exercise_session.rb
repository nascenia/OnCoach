class ExerciseSession < ActiveRecord::Base
  belongs_to :exercise_plan
  belongs_to :exercise
end
