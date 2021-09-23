# frozen_string_literal: true

class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true, less_than: 6, greater_than_or_equal_to: 0 }
end
