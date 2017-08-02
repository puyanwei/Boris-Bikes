require_relative '../lib/docking_station'
require_relative '../lib/bike'

describe DockingStation do
  it "Recognises release_bike" do
    docking_station = DockingStation.new
    expect(docking_station).to respond_to(:release_bike)
  end
end

describe Bike do
  it "Bike is working" do
    bike = Bike.new
    expect(bike).to respond_to(:working?)
  end

  it "Recognises docking of bike" do
    docking_station = DockingStation.new
    expect(docking_station).to respond_to(:dock_bike)
  end

  it "Bike is docked" do
    docking_station = DockingStation.new
    expect(docking_station).to respond_to(:isDocked)
  end
end
