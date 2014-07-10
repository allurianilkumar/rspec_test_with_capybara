class AddCollageIdToStudents < ActiveRecord::Migration
  def change
    add_column :students, :collage_id, :integer
  end
end
