class AddEmployeeIdToPerformanceEvaluations < ActiveRecord::Migration[5.2]
  def change
    add_reference :performance_evaluations, :employee, foreign_key: true
  end
end
