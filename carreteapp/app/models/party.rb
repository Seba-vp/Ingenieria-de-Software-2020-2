class Party < ApplicationRecord
    has_many :services
    has_one :user
end
