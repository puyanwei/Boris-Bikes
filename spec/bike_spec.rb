require_relative '../lib/bike'


describe Bike do
  it "Bike is working" do
    bike = Bike.new
    expect(bike).to respond_to(:working?)
  end
end
