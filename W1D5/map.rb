class Map
  def initialize
    @my_map = []
  end

  def assign(key, value)
    index = @my_map.index {|pair| pair[0] == key}
    index ?  @my_map[index][1] = value : @my_map << [key, value]
    [key, value]
  end

  def lookup(key)
    @my_map.select {|pair| pair[0] == key}
  end

  def remove(key)
    index = @my_map.index {|pair| pair[0] == key}
    @my_map[index] ? @my_map.delete_at(index) : nil
  end

  def show
    @my_map.dup
  end

end

p my_map = Map.new
p my_map.assign('cat', 3)
p my_map.show
p my_map.assign('dog', 1)
p my_map.show
p my_map.assign('cat', 2)
p my_map.show
p my_map.lookup('dog')
p my_map.remove('cat')
p my_map.show
