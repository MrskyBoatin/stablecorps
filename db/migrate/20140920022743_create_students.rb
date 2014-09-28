class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
			t.string  :first_name
      t.string  :last_name
      t.string  :username
      t.integer :phone_number
      t.text    :address
      t.date    :date_of_birth
      t.string  :school
      t.string  :program_of_study
      t.integer :year, precision: 1
      t.integer :fees, scale: 2, :default=>0
      # t.belongs_to :course
      t.timestamps
    end
  end
end
