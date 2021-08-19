class CreateTodayExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :today_exercises do |t|
      t.string :title
      t.datetime :published_at
      t.string :channel_title
      t.string :video_id
      t.integer :exercise_menu_id

      t.timestamps
    end
  end
end
