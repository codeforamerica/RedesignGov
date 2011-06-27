class Logotype < ActiveRecord::Base
  belongs_to :project
  belongs_to :font
end
