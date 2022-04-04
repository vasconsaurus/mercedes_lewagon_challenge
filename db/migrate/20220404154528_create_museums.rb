class CreateMuseums < ActiveRecord::Migration[6.1]
  def change
    create_table :museums do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.integer :postcode

      t.timestamps
    end
  end
end
