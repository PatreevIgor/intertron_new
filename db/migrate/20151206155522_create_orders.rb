class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.integer :count
      t.text :adress
      t.text :user_name
      t.text :telephone

      t.timestamps null: false
    end
  end
end
