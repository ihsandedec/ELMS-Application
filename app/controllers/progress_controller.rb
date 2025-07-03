class ProgressController < ApplicationController
  before_action :authenticate_user!

  def update
    @progress = CourseProgress.find_or_initialize_by(user_id: current_user.id, course_id: params[:course_id])
    @progress.time_spent_minutes = params[:time_spent_minutes] if params[:time_spent_minutes]
    @progress.current_position = params[:current_position] if params[:current_position]
    @progress.completed = params[:completed] if params[:completed]
    if @progress.save
      render json: { success: true, progress: @progress }
    else
      render json: { success: false, errors: @progress.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
