class RenameExercisePlan < ActiveRecord::Migration
  def self.up
    rename_table :exercise_plans, :training_session_templates
    rename_table :training_plans, :training_plan_templates
  end

  def self.down
    rename_table :training_session_templates, :exercise_plans
    rename_table :training_plan_templates, :training_plans
  end
end
