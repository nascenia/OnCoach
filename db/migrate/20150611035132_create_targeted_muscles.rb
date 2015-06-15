class CreateTargetedMuscles < ActiveRecord::Migration
  def change
    create_table :targeted_muscles do |t|
      t.integer :exercise_id
      t.integer :muscle_id
      t.boolean :primary

      t.timestamps null: false
    end
  end
end
