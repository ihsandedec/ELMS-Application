class CreateCourses < ActiveRecord::Migration[8.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.integer :instructor_id
      t.integer :duration_minutes
      t.boolean :active

      t.timestamps
    end
  end
end
