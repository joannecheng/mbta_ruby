require 'spec_helper'

describe MBTA::Subway do
  describe '#routes' do
    it 'returns route collection' do
      subway = MBTA::Subway.new(route_name: 'Green Line', route_id:'810_')
      MBTA::Subway.routes[0].should be_instance_of MBTA::Subway
    end
  end
end

describe MBTA::CommuterRail do
  describe '#routes'
end

describe MBTA::Bus do
  describe '#routes'
end

describe MBTA::Boat do
  describe '#routes'
end
