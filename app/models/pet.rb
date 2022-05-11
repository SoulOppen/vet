class Pet < ApplicationRecord
    has_many :pet_histories
    def q_history
        self.pet_histories.count
    end
end
