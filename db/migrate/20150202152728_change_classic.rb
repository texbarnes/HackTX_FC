class ChangeClassic < ActiveRecord::Migration
  def change
    change_column(:users, :classicMode, :boolean, :default => false)
  end
end
