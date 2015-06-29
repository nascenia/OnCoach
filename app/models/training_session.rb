class TrainingSession < ActiveRecord::Base
  belongs_to :training_plan_template
  belongs_to :user, :foreign_key => :client_id
  has_many :exercises
  has_many :training_session_template
end
