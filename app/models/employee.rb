class Employee < ApplicationRecord
  # Associations
  belongs_to :department, counter_cache: true, optional: true

  # Validations
  validates :name, presence: true
  validates :nationality, presence: true
  validates :role, presence: true
  validates :birth_date, comparison: { less_than_or_equal_to: 18.years.ago, message: "you should be older than 18" }

  # Callbacks
end
