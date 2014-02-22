class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.string :address
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
