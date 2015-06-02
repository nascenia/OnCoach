class AddAvatarToExercises < ActiveRecord::Migration
  def change
    add_column :exercises, :avatar, :string
  end
end
