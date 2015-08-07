class CreateTeacherProfiles < ActiveRecord::Migration
  def change
    create_table :teacher_profiles do |t|
      t.references :school, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :contact_phone
      t.string :profile_pic
      t.text :bio

      t.timestamps null: false
    end
  end
end
