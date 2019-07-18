class Product < ApplicationRecord
  has_many_attached :images
  belongs_to :saler, class_name: "User"
  belongs_to :buyer, class_name: "User", optional: true

  validates :name, length: { minimum: 1, maximum: 25}


  validates :text, presence: true

  validates :price, numericality: {only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 100000, presence: true}
  has_one :category, dependent: :destroy
  accepts_nested_attributes_for :category
  


end