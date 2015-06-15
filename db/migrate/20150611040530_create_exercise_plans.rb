class CreateExercisePlans < ActiveRecord::Migration
  def change
    create_table :exercise_plans do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
