class Font < ActiveRecord::Base
  has_many :projects, :through => :logotype
end
