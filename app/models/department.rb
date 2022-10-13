class Department < ApplicationRecord
  # Associations
  has_many :employees, dependent: :nullify

  # Validations
  validates :name, presence: true, uniqueness: true
  validates :description, length: { in: 10..500 }, allow_blank: true
end

