class CoursesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_course, only: [:show, :edit, :update]
  before_action :authorize_instructor!, only: [:new, :create, :edit, :update]
  before_action :authorize_owner!, only: [:edit, :update]

  def index
    @courses = Course.all
  end

  def show
  end

  def new
    @course = Course.new
  end

  def create
    @course = current_user.instructed_courses.build(course_params)
    if @course.save
      redirect_to @course, notice: 'Kurs başarıyla oluşturuldu.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @course.update(course_params)
      redirect_to @course, notice: 'Kurs güncellendi.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
    def set_course
      @course = Course.find(params[:id])
    end

    def course_params
      params.require(:course).permit(:title, :description, :duration_minutes, :active)
    end

    def authorize_instructor!
      redirect_to root_path, alert: 'Yetkiniz yok.' unless current_user.instructor? || current_user.admin?
    end

    def authorize_owner!
      unless current_user.admin? || @course.instructor == current_user
        redirect_to courses_path, alert: 'Sadece kurs sahibi düzenleyebilir.'
      end
    end
end
