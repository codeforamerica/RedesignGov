class CreateSchemes < ActiveRecord::Migration
  def self.up
    create_table :schemes do |t|
      t.integer :color_id
      t.integer :project_id

      t.timestamps
    end
  end

  def self.down
    drop_table :schemes
  end
end
