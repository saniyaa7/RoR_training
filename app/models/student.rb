class Student < ApplicationRecord
    validates :first_name, :last_name, :gender,:phone, :address, presence: true
    validates :phone, length: {is:10}
    validates :phone, numericality: true
    validates :gender, inclusion: { in: %w(Male Female)}

    before_validation :normalize, on: [:create,:update]
    after_create  { puts "Student Registered Successfully!" }
    
    has_many :keep_tracks
    has_many :transactions
    has_many :borrowings

    private
    def normalize
      self.first_name = first_name.downcase.titleize
      self.last_name = last_name.downcase.titleize
      self.gender=gender.downcase.titleize
      self.phone=phone
    end

  end
  