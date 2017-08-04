class DockingStation

attr_accessor :bikes, :capacity
DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @broken = []
    @capacity = capacity
  end

  def release_bike
    if @bikes.empty?
      raise "No bikes available"
      else Bike.new
    end
  end

  def dock_bike(bike, working?=true)
    raise "No docking slots available" if full?
    working? ? @bikes << bike : @broken << bike
  end

  def isDocked
  end

  private

  def full?
    @bikes.length >= @capacity
  end
end
