class AddTrainerIdToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :trainer_id ,:integer
  end
end
