class AddPerformanceCommitmentIdToComments < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :performance_commitment, foreign_key: true
  end
end
