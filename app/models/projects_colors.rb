class ProjectsColors < ActiveRecord::Base
  belongs_to :project
  belongs_to :color
end
