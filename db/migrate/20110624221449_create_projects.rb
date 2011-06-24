class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :org_name
      t.string :org_desc
      t.text :values
      t.text :colors
      t.date :deadline
      t.text :comments
      t.boolean :active

      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end
