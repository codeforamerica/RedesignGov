class ChangeDatatypeForHex < ActiveRecord::Migration
  def self.up
    change_table :colors do |t|
      t.change :hex, :string
    end
  end

  def self.down
    change_table :colors do |t|
      t.change :hex, :integer
    end
  end
end
