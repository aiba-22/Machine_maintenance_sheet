class MaintenanceLocation < ApplicationRecord
  belongs_to :machine

  def deadline_update(add_day)
    Time.now + add_day.day
  end
end
