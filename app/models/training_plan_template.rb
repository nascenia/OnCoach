class TrainingPlanTemplate < ActiveRecord::Base
  has_many :training_sessions
  belongs_to :user
end
