class Staff < ApplicationRecord
    validates :name, :phone, presence: true
    validates :phone, length: { is: 10}
    validates :phone, numericality: true
    before_validation :normalize, on: [:create,:update]
    has_many :books
    has_many :reports
    has_many :keep_tracks
    belongs_to :book

    def normalize
        self.name = name.downcase.titleize
        
    end

end
