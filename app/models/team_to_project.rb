class TeamToProject < ApplicationRecord
	#Model for the tertiary table holding all teams and the projects that are associated with those teams.
	belongs_to :team
	belongs_to :project
end
