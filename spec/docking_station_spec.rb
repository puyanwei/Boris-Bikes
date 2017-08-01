require 'docking_station'

describe DockingStation do
  it "Docking station should not be nil" do

  expect(DockingStation.new).not_to eq(nil)
  end
end
