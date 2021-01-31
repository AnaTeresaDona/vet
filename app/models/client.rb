class Client < ApplicationRecord
    has_many :pets, dependent: :destroy


    def qpets
        pets.count
    end
end
