class ChangeUserTypeToInteger < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.change :type, :integer
    end
  end

  def self.down
    change_table :users do |t|
      t.change :type, :int
    end
  end
end
