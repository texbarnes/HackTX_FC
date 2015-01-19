class AddUsertoOrder < ActiveRecord::Migration
  def change
    add_column :orders, :user, :belongs_to
    add_column :orders, :order_date, :datetime
  end
end
