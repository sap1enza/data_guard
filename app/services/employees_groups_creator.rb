class EmployeesGroupsCreator
  def execute
    employees_ids = employees_by_groups

    check_resting_employees!(employees_ids)
    create_groups!
    @groups_objects_ids
  end

  private

  def employees_by_groups
    @groups_array = []
    units_ids     = Unit.pluck(:id)
    employees_ids = Employee.pluck(:id)
    total_groups  = units_ids.count * 2

    average_employees_per_group = employees_ids.count / total_groups
    employees_ids.shuffle!

    total_groups.times do
      @groups_array << employees_ids.shift(average_employees_per_group)
    end

    employees_ids
  end

  def check_resting_employees!(employees_ids)
    return unless employees_ids.present?

    employees_ids.each_with_index do |employee, index|
      @groups_array[index] << employee
    end
  end

  def create_groups!
    @groups_objects_ids = []

    @groups_array.each do |employees_ids|
      ActiveRecord::Base.transaction do
        group = Group.create!

        employees_ids.each do |id|
          EmployeeGroup.create!(employee_id: id, group: group)
        end

        @groups_objects_ids << group.id
      end
    end
  end
end
