class AddVcardToUser < ActiveRecord::Migration
  def change
    add_column :users, :vcard, :string
  end
end
