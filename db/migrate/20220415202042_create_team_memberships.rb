class CreateTeamMemberships < ActiveRecord::Migration[6.1]
  def change
    create_table :team_memberships do |t|
    t.belongs_to :team
    t.belongs_to :student
    t.timestamps
    end
  end
end
