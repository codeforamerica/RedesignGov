class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.integer :type
      t.string :email
      t.string :password
      t.string :display_name

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
