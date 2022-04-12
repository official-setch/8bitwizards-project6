class Student < ApplicationRecord
  has_many :team_memberships
  has_many :teams, through: :team_memberships
    limit:2
end
