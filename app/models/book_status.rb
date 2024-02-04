class BookStatus < ApplicationRecord
    validates :status_name, presence: true
    before_validation :normalize

    private
    def normalize
        self.status_name=status_name.downcase.titleize
    end
    
end
