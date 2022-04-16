class Team < ApplicationRecord
  has_many :team_memberships
  has_many :students, through: :team_memberships
  has_many :team_to_projects
  has_many :projects, through: :team_to_projects
end