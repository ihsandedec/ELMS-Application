class HomeController < ApplicationController
  before_action :authenticate_user!

  def dashboard
    case current_user.role
    when 'student'
      @enrollments = current_user.enrollments.includes(:course)
      @progresses = current_user.course_progresses.includes(:course)
    when 'instructor'
      @courses = current_user.instructed_courses.includes(:enrollments)
    when 'admin'
      @users_count = User.count
      @courses_count = Course.count
      @enrollments_count = Enrollment.count
    end
  end
end
