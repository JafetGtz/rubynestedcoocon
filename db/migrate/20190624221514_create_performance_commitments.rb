class CreatePerformanceCommitments < ActiveRecord::Migration[5.2]
  def change
    create_table :performance_commitments do |t|
      t.text :commitment

      t.timestamps
    end
  end
end
