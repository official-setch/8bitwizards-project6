class CreateEvals < ActiveRecord::Migration[6.1]
  def change
  
    create_table :evals do |t|
      t.boolean :complete
      t.integer :results

      t.timestamps
    end
  end
end
