class Project < ApplicationRecord
  has_many :team_to_projects
  has_many :teams, through: :team_to_projects
end
