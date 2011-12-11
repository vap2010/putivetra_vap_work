class Project < ActiveRecord::Base
  has_many :articles, :dependent => :destroy
  has_many :project_vacancies, :dependent => :destroy
  has_many :vacancies, :through => :project_vacancies
end
