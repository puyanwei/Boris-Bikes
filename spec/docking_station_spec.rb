require 'docking_station'

describe DockingStation do
  it "docking station should not be nil" do

  docking_station = DockingStation.new #Defined var w/type Dockingstation
  expect(docking_station).not_to eq(nil)#Check initialization and that its not nil
  end
end
