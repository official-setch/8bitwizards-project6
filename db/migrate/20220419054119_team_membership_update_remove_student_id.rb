class TeamMembershipUpdateRemoveStudentId < ActiveRecord::Migration[6.1]
  def change
  	remove_column :team_memberships, :student_id
  end
end
