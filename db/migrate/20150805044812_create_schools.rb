class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :street_address_1
      t.string :street_address_2
      t.string :suburb
      t.string :state
      t.string :postcode
      t.string :country
      t.string :acara_school_id
      t.string :school_type

      t.timestamps null: false
    end
  end
end
