class Vacancy < ActiveRecord::Base
  include Metatagable
  validates :title, :presence => true
  has_many :project_vacancies, :dependent => :destroy
  has_many :projects, :through => :project_vacancies
end
