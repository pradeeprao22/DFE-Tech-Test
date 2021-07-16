class Trip < ApplicationRecord
    has_many :stations
    has_many :fares
    belongs_to :user
end