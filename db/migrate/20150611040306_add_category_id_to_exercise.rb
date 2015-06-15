class AddCategoryIdToExercise < ActiveRecord::Migration
  def self.up
    add_column :exercises, :category_id, :integer
  end

  def self.down
    remove_column :exercises, :category_id
  end
end
