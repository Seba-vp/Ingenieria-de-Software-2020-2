class Service < ApplicationRecord
    has_many :feedbacks
    has_many :parties
    has_one :comuna
end
