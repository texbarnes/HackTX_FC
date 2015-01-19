class AddDisplayChoiceForUsers < ActiveRecord::Migration
  def change
    add_column :users, :showE, :boolean
    add_column :users, :showP, :boolean
    add_column :users, :showText, :boolean
    add_column :users, :showTwit, :boolean
    add_column :users, :showLink, :boolean
    add_column :users, :showFace, :boolean
  end
end
