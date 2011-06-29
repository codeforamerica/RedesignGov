class Scheme < ActiveRecord::Base
  belongs_to :color
  belongs_to :project
end
