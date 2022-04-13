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
    if @maintenance_location.save
       @maintenance_location.update(deadline: @maintenance_location.deadline_update(@maintenance_location.interval))
      redirect_to root_path
    end
  end

  def update
    @maintenance_location = MaintenanceLocation.find_by(id: params[:id])
    @maintenance_location.update(deadline: @maintenance_location.deadline_update(@maintenance_location.interval))
    redirect_to root_path
  end


  private

  def set_machine
    @maintenance_locations = MaintenanceLocation.all
  end

  def maintenance_location_paramas
    params.require(:maintenance_location).permit(:name, :interval, :time_required, :machine_id)
  end

end
