class CreateTeamProjects < ActiveRecord::Migration[6.1]

  def change
    create_table :team_projects do |t|
      t.integer :grade
      t.boolean :evals_complete
			t.belongs_to :team
			t.belogs_to :project
      t.timestamps
    end
  end
end
