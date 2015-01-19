class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :quaintity
      t.string :paperStock
      t.string :design
      t.float :subtotal
      t.float :total
      t.datetime :order_date
      t.string :address1
      t.string :address2
      t.string :state
      t.string :city
      t.string :zip
      t.integer :user_id

      t.timestamps
    end
  end
end
