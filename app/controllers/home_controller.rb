class HomeController < ApplicationController
  def index
    @groups_ids = params[:groups_ids]
  end

  def permitted_params
    params.permit(:groups_ids)
  end
end
