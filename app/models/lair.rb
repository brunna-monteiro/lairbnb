class Lair < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_many :users, through: :reservations

  validates :name, presence: true
  validates :price, presence: true, numericality: { only_integer: true }

  has_one_attached :photo
end
