class Subject < ApplicationRecord
    has_many :books, class_name: "Book", foreign_key: "reference_id"
end
