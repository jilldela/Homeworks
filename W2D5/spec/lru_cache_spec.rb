require 'rspec'
require 'lru_cache'

describe LRUCache do
  subject(:cache) { LRUCache.new(4) }
  before(:each) do
    cache.add("I walk the line")
    cache.add([1,2,3])
    cache.add(5)
  end

  describe "#count" do
    it 'returns the length of the current cache' do
      expect(cache.count).to eq(3)
    end
  end

  describe "#add" do
    it 'adds new elements to the cache' do
      expect(cache.show).to eq(["I walk the line", [1, 2, 3], 5])
    end

    it 'updates the order of the cache' do
      cache.add(5)
      expect(cache.show).to eq(["I walk the line", [1, 2, 3], 5])
    end

    it 'removes LRU' do
      cache.add([1,2,3,4])
      cache.add(:ring_of_fire)
      expect(cache.show).to eq([[1, 2, 3], 5, [1,2,3,4], :ring_of_fire])
    end

    it 'does not exceed size' do
      cache.add([1,2,3,4])
      cache.add(:ring_of_fire)
      expect(cache.count).to eq(4)
    end

  end

  describe "#show" do
    it 'shows the cache' do
      cache.add([1,2,3,4])
      cache.add(:ring_of_fire)
      expect(cache.show).to eq([[1, 2, 3], 5, [1,2,3,4], :ring_of_fire])
    end
  end
end
