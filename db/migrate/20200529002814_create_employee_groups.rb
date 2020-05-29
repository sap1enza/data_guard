class CreateEmployeeGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :employee_groups do |t|
      t.references :employee
      t.references :group
      t.timestamps
    end
  end
end
