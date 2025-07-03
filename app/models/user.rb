class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :enrollments
  has_many :courses, through: :enrollments
  has_many :course_progresses

  has_many :instructed_courses, class_name: 'Course', foreign_key: 'instructor_id'

  enum :role, { student: 'student', instructor: 'instructor', admin: 'admin' }

  validates :name, presence: true
  validates :role, presence: true
end
