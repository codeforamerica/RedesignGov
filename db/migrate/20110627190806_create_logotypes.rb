class CreateLogotypes < ActiveRecord::Migration
  def self.up
    create_table :logotypes do |t|
      t.integer :font_id
      t.integer :project_id

      t.timestamps
    end
  end

  def self.down
    drop_table :logotypes
  end
end
