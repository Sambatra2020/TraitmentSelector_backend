class Patient < ApplicationRecord
    validates :name, presence: true
    has_many :treatments , through: :list_treatments
end
