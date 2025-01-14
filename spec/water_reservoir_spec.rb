require_relative 'spec_helper'
require_relative '../lib/water_reservoir'

describe 'A water reservoir' do
  let(:reservoir) { WaterReservoir.new }

  it 'can be instantiated' do
    reservoir
  end

  it 'has a default initial capacity of ten' do
    expect(reservoir.capacity).to eq(10)
  end

  it 'has a default initial water volume of 0' do
    expect(reservoir.current_water_volume).to eq(0)
  end

  it 'is initially empty' do
    expect(reservoir).to be_empty
  end

  it 'can be filled to capacity' do
    reservoir.fill
    expect(reservoir).to_not be_empty
    expect(reservoir.current_water_volume).to eq(10)
  end

  it 'can be drained up to a given volume, but no less than zero' do
    reservoir.drain(99)
    expect(reservoir.current_water_volume).to eq(0)
  end

  it 'can be drained a given volume' do
    reservoir.fill
    reservoir.drain(5)
    expect(reservoir.current_water_volume).to eq(5)
  end
end
