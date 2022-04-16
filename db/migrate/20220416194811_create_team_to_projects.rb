class CreateTeamToProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :team_to_projects do |t|
	t.belongs_to :team
	t.belongs_to :project
      t.timestamps
    end
  end
end
