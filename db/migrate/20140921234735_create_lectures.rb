class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
			t.string    :venue
			t.datetime  :start_time
			t.datetime  :end_time
      t.belongs_to  :course
      t.belongs_to  :trainer
      t.timestamps
    end
  end
end
