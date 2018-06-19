class Order < ApplicationRecord
  belongs_to :user
  validates order_number: numericality: {messsage: 'Must be a number'}
  validates order_number: uniqueness: true
  def validation
    errors.add(:order, "Cannot contain special characters !@£$%^&*()_+-=#€?{}[]<>,.")
  end
end

order = Order.create(order: "@£$%^&*()_+=-€#?{}[]<>,.")

order.errors[:order] => ["Cannot contain special characters !@£$%^&*()_+-=#€?{}[]<>,."]

person.errors.full_messages => ["Cannot contain special characters !@£$%^&*()_+-=#€?{}[]<>,."]
