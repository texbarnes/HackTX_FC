class AddDesignToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :design, :string
  end
end
