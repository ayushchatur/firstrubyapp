class Book < ApplicationRecord
    it { should belong_to(:subject) } 
    it { should validate_presence_of(:title) }
    validates_numericality_of :price, on: :error, message: "is not a number"
    
end
