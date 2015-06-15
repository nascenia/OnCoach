class CreateExerciseSessions < ActiveRecord::Migration
  def change
    create_table :exercise_sessions do |t|
      t.integer :exercise_plan_id
      t.integer :exercise_id
      t.string :phase
      t.integer :intensity
      t.integer :repetitions
      t.integer :num_of_series
      t.integer :resting_period

      t.timestamps null: false
    end
  end
end
