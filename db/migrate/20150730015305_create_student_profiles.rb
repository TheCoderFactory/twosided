class CreateStudentProfiles < ActiveRecord::Migration
  def change
    create_table :student_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :address_line_1
      t.string :address_line_2
      t.string :suburb
      t.string :postcode
      t.string :state
      t.string :website_url
      t.string :contact_number
      t.string :degree
      t.string :institution
      t.string :working_with_children_number
      t.string :profile_pic
      t.boolean :induction
      t.text :bio

      t.timestamps null: false
    end
  end
end
