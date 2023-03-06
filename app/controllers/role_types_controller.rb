class RoleTypesController < ApplicationController
  def index
    @roles = RoleType.all
  end
end
