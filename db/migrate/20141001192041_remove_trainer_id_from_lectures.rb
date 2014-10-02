class RemoveTrainerIdFromLectures < ActiveRecord::Migration
 def up
    remove_column :lectures, :trainer_id
  end
end
