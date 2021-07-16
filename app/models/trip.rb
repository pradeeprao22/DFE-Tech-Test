class Trip < ApplicationRecord
    has_many :stations
    has_one :fare
end