class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :type
      t.text :description
      t.string :image
      t.string :youtube_video_link
      t.integer :calories

      t.timestamps null: false
    end
  end
end
