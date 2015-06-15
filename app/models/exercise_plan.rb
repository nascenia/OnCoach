class ExercisePlan < ActiveRecord::Base
  belongs_to :training_session
  has_many :exercise_sessions
end
