class ExerciseMenu < ApplicationRecord
  has_many :today_exercises, dependent: :destroy
  has_many :comments, dependent: :destroy
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user

  validates :exercise_purpose, presence: true
  validates :exercise_goal, presence: true

  def liked_by?(user)
    likes.where(user_id: user.id).exists?
  end
end
