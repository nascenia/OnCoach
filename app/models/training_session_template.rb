class TrainingSessionTemplate < ActiveRecord::Base
  belongs_to :training_session
  has_many :exercise_sessions

  accepts_nested_attributes_for :exercise_sessions

  def sessions_for_form
    collection = exercise_sessions.where(training_session_template_id: id)
    collection.any? ? collection: exercise_sessions.build
  end
end