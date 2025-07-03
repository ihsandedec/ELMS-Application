class CreateCourseProgresses < ActiveRecord::Migration[8.0]
  def change
    create_table :course_progresses do |t|
      t.integer :user_id
      t.integer :course_id
      t.integer :time_spent_minutes
      t.string :current_position
      t.boolean :completed

      t.timestamps
    end
  end
end
