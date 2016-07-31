class CreateBelts < ActiveRecord::Migration
  def change
    create_table :belts do |t|
      t.integer :member_id
      t.integer :belt
      t.integer :stripes
      t.date :promotion_date
      t.timestamps null: false
    end
  end
end
