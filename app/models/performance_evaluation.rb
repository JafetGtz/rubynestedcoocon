class PerformanceEvaluation < ApplicationRecord
    belongs_to :employee
    has_many :performance_commitments, inverse_of: :performance_evaluation
    accepts_nested_attributes_for :performance_commitments, allow_destroy: true
end
