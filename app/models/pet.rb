class Pet < ApplicationRecord
    belongs_to :client, dependent: :destroy
    has_many :pet_histories
    def q_history
        self.pet_histories.count
    end
    def mean_height
        c=self.pet_histories.count
        if c>0
            (self.pet_histories.inject(0){|sum,s| sum+s.height})/c
        else
            "N/A"
        end
    end
    def mean_weight
        c=self.pet_histories.count
        if c>0
            (self.pet_histories.inject(0){|sum,s| sum+s.weight})/c
        else
            "N/A"
        end
    end
    def max_height
        c=self.pet_histories.count
        if c>0
            self.pet_histories.map{|c| c.height}.max
        else
            "N/A"
        end
    end
    def max_weight
        c=self.pet_histories.count
        if c>0
            self.pet_histories.map{|c| c.weight}.max
        else
            "N/A"
        end
    end
end
