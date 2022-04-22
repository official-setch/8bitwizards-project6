class UpdateEvals < ActiveRecord::Migration[6.1]
  def change
  	add_column :evals, :project_id, :integer
  	add_column :evals, :rating_id, :integer
  	add_column :evals, :rated_id, :integer
  	add_column :evals, :avg, :integer
  	add_column :evals, :comment, :string
  end
end
