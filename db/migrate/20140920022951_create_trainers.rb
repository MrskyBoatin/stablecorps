class CreateTrainers < ActiveRecord::Migration
  def change
    create_table :trainers do |t|
			t.string    :first_name
      t.string    :last_name
      t.string    :username
      t.integer   :phone_number
      t.text      :address
      t.date      :date_of_birth
      t.belongs_to   :course
      t.timestamps
    end
  end
end
