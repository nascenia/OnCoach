class RenameTrainingPlanIdColumn < ActiveRecord::Migration
  def self.up
    rename_column :training_sessions, :training_plan_id, :training_plan_template_id
  end

  def self.down
    rename_column :training_sessions, :training_plan_template_id, :training_plan_id
  end
end
