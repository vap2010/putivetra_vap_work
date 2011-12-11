class Project < ActiveRecord::Base
  has_many :articles, :dependent => :destroy
  has_many :project_vacancies, :dependent => :destroy
  has_many :vacancies, :through => :project_vacancies
  has_many :project_events, :dependent => :destroy
  has_many :events, :through => :project_events
end
