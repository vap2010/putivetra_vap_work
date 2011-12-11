class ProjectVacancy < ActiveRecord::Base
  belongs_to :project
  belongs_to :vacancy
end
