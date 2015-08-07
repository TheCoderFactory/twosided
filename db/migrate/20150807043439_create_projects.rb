class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.text :description
      t.date :start_date
      t.date :end_date
      t.boolean :flexible_dates
      t.string :days
      t.text :student_description
      t.string :address
      t.string :suburb
      t.string :postcode
      t.decimal :pay_per_hour

      t.timestamps null: false
    end
  end
end
