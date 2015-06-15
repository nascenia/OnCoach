class RenameCategoryIdInExercise < ActiveRecord::Migration
  def self.up
    rename_column :exercises, :category_id, :exercise_category_id
  end

  def self.down
    rename_column :exercises, :exercise_category_id, :category_id
  end
end
