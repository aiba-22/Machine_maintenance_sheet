class MaintenanceLocationsController < ApplicationController
  before_action :set_machine, only: %i[index]
  def index
  end

  def show
  end

  def new
    @maintenance_location = MaintenanceLocation.new
  end

  def create
    @maintenance_location = MaintenanceLocation.new(maintenance_location_paramas)
    redirect_to root_path if @maintenance_location.save
  end

  private

  def set_machine
    @maintenance_locations = MaintenanceLocation.all
  end

  def maintenance_location_paramas
    params.require(:maintenance_location).permit(:name, :interval, :time_required, :deadline, :machine_id)
  end

end
