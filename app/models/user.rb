class User < ActiveRecord::Base
  has_one :project
  has_many :submissions
end
