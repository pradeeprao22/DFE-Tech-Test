class Fare < ApplicationRecord
    belongs_to :zone
    belongs_to :trip
end