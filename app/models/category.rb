class Category < ApplicationRecord
    validates :labelle_categorie, presence: true
    has_many :treatments
end
