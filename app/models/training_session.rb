class TrainingSession < ActiveRecord::Base
  belongs_to :training_plan_template
  belongs_to :user, :foreign_key => :client_id
  has_many :exercises
  belongs_to :training_session_template

  def clone_training_plan_template_sessions
    training_plan_template = TrainingPlanTemplate.find self.training_plan_template_id

    training_plan_template.training_sessions.each do |ts|
      number_of_days = ((ts.start_at - training_plan_template.start_date.to_datetime.change({hour: ts.start_at.hour, min: ts.start_at.min}))/ 3600).to_i
      ts_start_at = self.start_at.change({
        hour: ts.start_at.hour,
        min: ts.start_at.min
      })

      TrainingSession.create(
        :training_session_template_id => ts.training_session_template_id,
        :client_id => self.client_id,
        :start_at => ts_start_at + number_of_days.hours
      )
    end
  end
end
