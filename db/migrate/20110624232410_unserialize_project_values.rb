class UnserializeProjectValues < ActiveRecord::Migration
  def self.up
    add_column :projects, :valueOne, :string
    add_column :projects, :valueTwo, :string
    add_column :projects, :valueThree, :string
    remove_column :projects, :values
  end 

  def self.down
    remove_column :projects, :valueOne, :string
    remove_column :projects, :valueTwo, :string
    remove_column :projects, :valueThree, :string
    add_column :projects, :values
  end
end
