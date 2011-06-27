class Project < ActiveRecord::Base
  belongs_to :user
  has_many :submissions
  has_many :sources
  has_many :logotypes, :dependent => :destroy
  has_many :fonts, :through => :logotypes
  accepts_nested_attributes_for :logotypes
end
