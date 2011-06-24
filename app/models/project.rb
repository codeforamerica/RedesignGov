class Project < ActiveRecord::Base
  belongs_to :user
  has_many :submissions
  has_many :sources
  has_many :fonts
  serialize :values
end
