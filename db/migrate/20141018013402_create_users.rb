class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first
      t.string :last
      t.string :email
      t.string :username
      t.string :password
      t.string :org
      t.string :role
      t.string :phone
      t.text :bio

      t.timestamps
    end
  end
end
