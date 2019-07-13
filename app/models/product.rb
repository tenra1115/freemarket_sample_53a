class Product < ApplicationRecord
  has_many_attached :images
  validates :name, length: { minimum: 1, maximum: 5}

  validates :text, presence: true

  validates :price, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 10000}
  has_many :categories
  accepts_nested_attributes_for :categories

end