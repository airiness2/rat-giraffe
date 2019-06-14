class CreateRentHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :rent_houses do |t|
      t.string :rent_name
      t.integer :charge
      t.string :address
      t.integer :age
      t.string :note

      t.timestamps
    end
  end
end
