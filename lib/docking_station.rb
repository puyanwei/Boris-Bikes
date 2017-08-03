class DockingStation

attr_accessor :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    if @bikes.empty?
      raise "No bikes available"
      else Bike.new
    end
  end

  def dock_bike
  end

  def isDocked
  end
end
