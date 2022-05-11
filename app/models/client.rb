class Client < ApplicationRecord
    has_many :pets
    def q_mascotas
        self.pets.count
    end
end
