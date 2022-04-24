class Student < ApplicationRecord
  #Model for a student. Many to many relation with teams, through tertiary table team_memberships
  has_many :team_memberships
  has_many :teams, through: :team_memberships
end
