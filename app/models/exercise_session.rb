class ExerciseSession < ActiveRecord::Base
  belongs_to :training_session_template
  belongs_to :exercise
end
