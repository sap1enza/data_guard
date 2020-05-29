class EmployeeGroupsController < ApplicationController
  def create
    groups_ids = EmployeesGroupsCreator.new.execute

    redirect_to controller: 'home', action: 'index', groups_ids: groups_ids
  end
end
