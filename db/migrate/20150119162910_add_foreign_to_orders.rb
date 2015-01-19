class AddForeignToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :user_id, :integer
    add_index :orders, :user_id
    add_column :orders, :order_date, :datetime
  end
end
