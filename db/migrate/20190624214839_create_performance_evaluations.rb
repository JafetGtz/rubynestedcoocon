class CreatePerformanceEvaluations < ActiveRecord::Migration[5.2]
  def change
    create_table :performance_evaluations do |t|
      t.text :title
      t.date :due_date

      t.timestamps
    end
  end
end
