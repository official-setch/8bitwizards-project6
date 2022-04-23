class Team < ApplicationRecord
	#Model for a team. Has many to many relation with users through tertiary table :team_memberships, and has many to many relation with projects through :team_to_projects.
	#All teams must have a name.
  has_many :team_memberships
  has_many :users, through: :team_memberships
  has_many :team_to_projects
  has_many :projects, through: :team_to_projects
  validates :name, presence: true
end
