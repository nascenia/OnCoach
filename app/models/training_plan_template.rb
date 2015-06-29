class TrainingPlanTemplate < ActiveRecord::Base
  has_many :training_sessions
end
