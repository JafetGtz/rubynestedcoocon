class AddPerformanceEvaluationIdToPerformanceCommitments < ActiveRecord::Migration[5.2]
  def change
    add_reference :performance_commitments, :performance_evaluation, foreign_key: true
  end
end
