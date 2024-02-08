class Transaction < ApplicationRecord
    validates :transaction_name, :transaction_date, :transaction_amount, presence: true
    validates :transaction_amount, numericality: true
    has_many :reports
    belongs_to :student
end
