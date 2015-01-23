class AddClassicToUser < ActiveRecord::Migration
  def change
    change_column :users, :classicMode, :boolean, :default => true
  end
end
