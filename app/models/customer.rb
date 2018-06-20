class Customer < ApplicationRecord
  has_many :orders
  validates :customer_number numericality: {messsage: 'Must be a number'}
  validates :customer_number length: {is: 5}
  validates :existing_customer exclusion: {in: [nil]}
end
