class MaintenancesController < ApplicationController
  before_action :set_machine, only: %i[index]
  def index
  end

  def show
  end

  def new
  end

  def set_machine
    @machine = Machine.all
  end
end
