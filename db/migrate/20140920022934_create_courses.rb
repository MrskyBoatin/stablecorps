class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string    :course_name
      t.integer   :price, scale:2
			t.datetime  :start_time
			t.datetime  :end_time
      t.belongs_to  :trainer
      t.timestamps
    end
  end
end
