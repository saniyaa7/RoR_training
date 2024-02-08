class Borrowing < ApplicationRecord
    validates :date_borrowed, :date_return, presence: true
    validates :date_return, comparison: { greater_than: :date_borrowed }
    has_many :reports
    belongs_to :book
    belongs_to :student
end
