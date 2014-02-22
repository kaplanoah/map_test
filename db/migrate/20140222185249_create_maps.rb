class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.string :address
      t.decimal :lat
      t.decimal :lng

      t.timestamps
    end
  end
end
