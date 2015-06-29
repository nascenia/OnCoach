class RenameTrainingSessionField < ActiveRecord::Migration
  def self.up
    rename_column :training_sessions, :exercise_plan_id, :training_session_template_id
  end

  def self.down
    rename_column :training_sessions, :training_session_template_id, :exercise_plan_id
  end
end
