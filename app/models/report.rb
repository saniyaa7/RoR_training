class Report < ApplicationRecord
    validates :report_date, presence: true

    belongs_to :staff
    belongs_to :borrowing
    belongs_to :transaction
end
