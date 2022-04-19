class TeamMembershipUpdate < ActiveRecord::Migration[6.1]
  def change
  	remove_column :team_memberships, :studnet_id
  	add_column :team_memberships, :user_id, :integer
  	add_reference :team_memberships, :user_id
  	add_foreign_key :team_memberships, :users
  end
end
