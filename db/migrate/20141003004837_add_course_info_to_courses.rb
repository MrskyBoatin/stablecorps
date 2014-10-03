class AddCourseInfoToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :course_info ,:text
  end
end
