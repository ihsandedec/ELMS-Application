class EnrollmentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @course = Course.find(params[:course_id])
    if current_user.enrollments.where(course: @course).exists?
      redirect_to @course, alert: 'Zaten bu kursa kayıtlısınız.'
    else
      @enrollment = current_user.enrollments.create!(course: @course, enrolled_at: Time.current)
      redirect_to my_courses_enrollments_path, notice: 'Kursa başarıyla kayıt olundu.'
    end
  end

  def destroy
    @enrollment = current_user.enrollments.find_by(id: params[:id])
    if @enrollment
      @enrollment.destroy
      redirect_to my_courses_enrollments_path, notice: 'Kayıt silindi.'
    else
      redirect_to my_courses_enrollments_path, alert: 'Kayıt bulunamadı.'
    end
  end

  def my_courses
    @enrollments = current_user.enrollments.includes(:course)
  end
end
