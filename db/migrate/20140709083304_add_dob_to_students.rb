class AddDobToStudents < ActiveRecord::Migration
  def change
    add_column :students, :sdob, :integer
  end
end
