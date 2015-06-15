class CreateMuscles < ActiveRecord::Migration
  def change
    create_table :muscles do |t|
      t.string :name
      t.integer :muscle_group_id

      t.timestamps null: false
    end
  end
end
