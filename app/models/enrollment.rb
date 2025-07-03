class Enrollment < ApplicationRecord
  belongs_to :user
  belongs_to :course

  validates :user_id, :course_id, :enrolled_at, presence: true
  validates :user_id, uniqueness: { scope: :course_id, message: 'Bu kullanıcı zaten bu kursa kayıtlı.' }
end
