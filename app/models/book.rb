class Book < ApplicationRecord
    belongs_to(:subject)
    validates_presence_of(:title)
    validates_numericality_of :price, on: :error, message: "is not a number"
    
end
