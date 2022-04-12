class Project < ApplicationRecord
  has_many: :team_projects
  has_many: :teams, through: :team_projects
end
