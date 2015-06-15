class CreateTrainingPlans < ActiveRecord::Migration
  def change
    create_table :training_plans do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
