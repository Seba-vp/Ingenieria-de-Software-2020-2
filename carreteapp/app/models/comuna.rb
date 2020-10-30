class Comuna < ApplicationRecord
    validates :name, presence: true
    has_many: users, dependent: :destroy
    has_many: parties
    has_many: services
end
