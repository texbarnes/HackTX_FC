class ChangeShowE < ActiveRecord::Migration
  def change
    change_column(:users, :showE, :boolean, :default => true)
  end
end
