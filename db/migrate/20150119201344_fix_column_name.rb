class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :orders, :quaintity, :quantity
  end
end
