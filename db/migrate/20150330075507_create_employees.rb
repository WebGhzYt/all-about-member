class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :fatname
      t.string :motname
      t.boolean :sex
      t.date :dob
      t.string :email
      t.string :phone
      t.text :image
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
