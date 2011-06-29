class Color < ActiveRecord::Base
  has_many :projects, :through => :scheme
  has_many :schemes
end
