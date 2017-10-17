class CurrencyExchange < ApplicationRecord
	validates :from, presence: true
	validates :to, presence: true
	validates :rate, presence: true
end
