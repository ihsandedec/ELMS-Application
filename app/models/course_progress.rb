class CourseProgress < ApplicationRecord
  belongs_to :user
  belongs_to :course

  validates :user_id, :course_id, presence: true
  validates :time_spent_minutes, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
end
