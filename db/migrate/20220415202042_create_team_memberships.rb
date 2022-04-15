class CreateTeamMemberships < ActiveRecord::Migration[6.1]
  def change
    create_table :team_memberships do |t|
    t.timestamps
    end
  end
end
