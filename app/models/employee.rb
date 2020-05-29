class Employee < ApplicationRecord
  belongs_to :unit

  has_many :employee_groups
  has_many :groups, through: :employee_groups

  validates :name, :unit_id, presence: true
end
