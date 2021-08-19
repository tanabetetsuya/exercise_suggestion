class CreateExerciseVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :exercise_videos do |t|
      t.string :title
      t.datetime :published_at
      t.string :channel_title
      t.string :video_id
      t.integer :user_id

      t.timestamps
    end
  end
end
