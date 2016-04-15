class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :nickname
      t.string :last_name
      t.date :date_birth
      t.date :date_joined
      t.integer :belt
      t.integer :stripes
      t.string :avatar
      t.text :description

      t.timestamps null: false
    end
  end
end
