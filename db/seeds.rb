# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Kullanıcılar
admin = User.create!(name: 'Admin', email: 'admin@example.com', password: 'password', role: 'admin')
teacher1 = User.create!(name: 'Öğretmen Ali', email: 'ali@example.com', password: 'password', role: 'instructor')
teacher2 = User.create!(name: 'Öğretmen Ayşe', email: 'ayse@example.com', password: 'password', role: 'instructor')
student1 = User.create!(name: 'Öğrenci Zeynep', email: 'zeynep@example.com', password: 'password', role: 'student')
student2 = User.create!(name: 'Öğrenci Mehmet', email: 'mehmet@example.com', password: 'password', role: 'student')
student3 = User.create!(name: 'Öğrenci Elif', email: 'elif@example.com', password: 'password', role: 'student')
student4 = User.create!(name: 'Öğrenci Can', email: 'can@example.com', password: 'password', role: 'student')
student5 = User.create!(name: 'Öğrenci Ece', email: 'ece@example.com', password: 'password', role: 'student')

# Kurslar
course1 = Course.create!(title: 'Ruby 101', description: 'Ruby programlamaya giriş', instructor: teacher1, duration_minutes: 120, active: true)
course2 = Course.create!(title: 'Rails Başlangıç', description: 'Rails ile web geliştirme', instructor: teacher1, duration_minutes: 180, active: true)
course3 = Course.create!(title: 'Frontend Temelleri', description: 'HTML, CSS, JS', instructor: teacher2, duration_minutes: 90, active: true)
course4 = Course.create!(title: 'Veritabanı Tasarımı', description: 'SQL ve veritabanı modelleme', instructor: teacher2, duration_minutes: 150, active: true)

# Kayıtlar
enr1 = Enrollment.create!(user: student1, course: course1, enrolled_at: Time.current)
enr2 = Enrollment.create!(user: student1, course: course2, enrolled_at: Time.current)
enr3 = Enrollment.create!(user: student2, course: course1, enrolled_at: Time.current)
enr4 = Enrollment.create!(user: student3, course: course3, enrolled_at: Time.current)
enr5 = Enrollment.create!(user: student4, course: course4, enrolled_at: Time.current)
enr6 = Enrollment.create!(user: student5, course: course2, enrolled_at: Time.current)

# İlerlemeler
CourseProgress.create!(user: student1, course: course1, time_spent_minutes: 60, current_position: 'Bölüm 2', completed: false)
CourseProgress.create!(user: student1, course: course2, time_spent_minutes: 180, current_position: 'Bitti', completed: true)
CourseProgress.create!(user: student2, course: course1, time_spent_minutes: 30, current_position: 'Bölüm 1', completed: false)
CourseProgress.create!(user: student3, course: course3, time_spent_minutes: 90, current_position: 'Bitti', completed: true)
CourseProgress.create!(user: student4, course: course4, time_spent_minutes: 50, current_position: 'Bölüm 1', completed: false)
