class Group < ApplicationRecord
  has_many :employee_groups
  has_many :employees, through: :employee_groups
end
