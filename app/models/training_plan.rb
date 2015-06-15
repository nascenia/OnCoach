class TrainingPlan < ActiveRecord::Base
  has_many :training_sessions
end
