class DockingStation

attr_accessor :bikes
DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    if @bikes.empty?
      raise "No bikes available"
      else Bike.new
    end
  end

  def dock_bike(bike)
    raise "No docking slots available" if full?
    @bikes << bike
    end
  end

  def isDocked
  end

  private

  def full?
    @bikes.length >= @capacity
  end
end
