class Trip < ApplicationRecord
    serialize :zones

    has_many :stations
    has_many :fares
    belongs_to :user
end