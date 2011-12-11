class Vacancy < ActiveRecord::Base
  validates :title, :presence => true
  has_many :project_vacancies, :dependent => :destroy
  has_many :projects, :through => :project_vacancies
end
