class Book < ApplicationRecord
    validates :book_title, :book_name,presence: true
    before_validation :normalize, on: [:create,:update]
    
    has_many :borrowings
    has_many :transactions
    has_many :book_statuses
    
    private
    def normalize
        self.book_title = book_title.downcase.titleize
        self.book_name = book_name.downcase.titleize
        self.publisher = publisher.downcase.titleize if publisher.present?
        self.author = author.downcase.titleize if author.present?
    end
end
