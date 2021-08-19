class CreateExerciseMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :exercise_menus do |t|
      t.string :exercise_purpose
      t.string :exercise_goal
      t.integer :user_id

      t.timestamps
    end
  end
end
