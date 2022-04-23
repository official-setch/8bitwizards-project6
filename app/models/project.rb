class Project < ApplicationRecord
  #Model for a single project. Many to many relation with teams, through tertiary table :team_to_projects
  has_many :team_to_projects
  has_many :teams, through: :team_to_projects
end
