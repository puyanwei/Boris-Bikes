require_relative '../lib/docking_station'
require_relative '../lib/bike'

describe DockingStation do
  it "Recognises release_bike" do
    expect(subject).to respond_to(:release_bike)
  end
  it "Recognises docking of bike" do
    expect(subject).to respond_to(:dock_bike)
  end

  it "Bike is docked" do
    expect(subject).to respond_to(:isDocked)
  end

  it "No bikes available" do
    subject.bikes = []
    expect {subject.release_bike}.to raise_error "No bikes available"
  end

  it "No docking slots available" do
    20.times {subject.dock_bike Bike.new}
    expect {subject.dock_bike Bike.new}.to raise_error "No docking slots available"
  end

  it "Sets default capacity number for docking stations when no arguments passed" do
    expect(subject.capacity).to eq 20
  end

  it "Sets custom capacity number for docking stations" do
    station = DockingStation.new(10)
    expect(station.capacity).to eq 10
  end
end

  describe Bike do
  it "Bike is working" do
    bike = Bike.new
    expect(bike).to respond_to(:working?)
  end
end
