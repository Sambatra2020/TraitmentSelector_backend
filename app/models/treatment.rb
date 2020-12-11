class Treatment < ApplicationRecord
    validates :title, presence: true
    belongs_to :category
    has_many :patients ,through: :list_treatments
end
