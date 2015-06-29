class RenameTrainingSessionTemplateField < ActiveRecord::Migration
  def self.up
    add_column :training_session_templates, :owner_id, :integer
    add_column :training_plan_templates, :owner_id, :integer
    rename_column :exercise_sessions, :exercise_plan_id, :training_session_template_id
  end

  def self.down
    remove_column :training_session_templates, :owner_id
    remove_column :training_plan_templates, :owner_id
    rename_column :exercise_sessions, :training_session_template_id, :exercise_plan_id
  end
end
