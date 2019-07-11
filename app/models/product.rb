class Product < ApplicationRecord

  validates :name, length: { minimum: 1, maximum: 5}

  validates :text, presence: true

  validates :price, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 10000}
end