class Course < ApplicationRecord
  belongs_to :instructor, class_name: 'User', foreign_key: 'instructor_id'
  has_many :enrollments
  has_many :students, through: :enrollments, source: :user
  has_many :course_progresses

  validates :title, :description, :instructor_id, :duration_minutes, presence: true
  validates :duration_minutes, numericality: { greater_than: 0 }
end
