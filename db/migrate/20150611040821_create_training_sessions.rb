class CreateTrainingSessions < ActiveRecord::Migration
  def change
    create_table :training_sessions do |t|
      t.integer :training_plan_id
      t.integer :exercise_plan_id
      t.integer :day

      t.timestamps null: false
    end
  end
end
