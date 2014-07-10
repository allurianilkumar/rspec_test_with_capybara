class CreateCollages < ActiveRecord::Migration
  def change
    create_table :collages do |t|
      t.string :cname
      t.string :branch
      t.string :exam

      t.timestamps
    end
  end
end
