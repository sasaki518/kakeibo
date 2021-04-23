class Balance < ApplicationRecord
    belongs_to :user
    validates :year, presence: true
    validates :month, presence: true
    validates :property, presence: true
    validates :account, presence: true
    validates :credit_card, presence: true
    validates :digital_cash, presence: true
    validates :certificate, presence: true
end
