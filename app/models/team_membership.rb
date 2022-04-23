class TeamMembership < ApplicationRecord
	#Model holding the tertiary table for :teams and the :users that make up those teams.
	belongs_to :user
	belongs_to :team
end
