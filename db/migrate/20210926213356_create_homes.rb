class CreateHomes < ActiveRecord::Migration[6.1]
  def change
    create_table :homes do |t|
      t.string :property_type
      t.string :address
      t.index :address, unique: true
      t.string :city
      t.string :state
      t.string :zip
      t.string :beds
      t.string :baths
      t.string :year_built
      t.string :status
      t.string :url

      t.timestamps
    end
  end
end
