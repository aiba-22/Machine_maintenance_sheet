class MachinesController < ApplicationController
  def new
    @machine = Machine.new
  end

  def create
    @machine = Machine.new(machine_params)
    redirect_to root_path if @machine.save
  end

  private

  def machine_params
    params.require(:machine).permit(:name)
  end
end
