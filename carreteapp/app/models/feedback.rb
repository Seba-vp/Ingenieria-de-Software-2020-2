class Feedback < ApplicationRecord
    has_one :user
    has_one :service
end
