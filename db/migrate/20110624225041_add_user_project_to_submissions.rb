class AddUserProjectToSubmissions < ActiveRecord::Migration
  def self.up
    add_column :submissions, :user_id, :integer
    add_column :submissions, :project_id, :integer
  end

  def self.down
    remove_column :submissions, :project_id
    remove_column :submissions, :user_id
  end
end
