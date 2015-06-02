class UpdateExerciseTypeField < ActiveRecord::Migration
  def self.up
    rename_column :exercises, :type, :exercise_type
  end

  def self.down
    rename_column :exercises, :exercise_type, :type
  end
end
