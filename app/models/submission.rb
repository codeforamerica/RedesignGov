class Submission < ActiveRecord::Base
  belongs_to :user
  belongs_to :project
  has_many :sources
  has_many :comments
end
