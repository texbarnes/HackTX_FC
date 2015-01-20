class MoreDisplay < ActiveRecord::Migration
  def change
    add_column :users, :showWeb, :boolean
    add_column :users, :classicMode, :boolean
  end
end
