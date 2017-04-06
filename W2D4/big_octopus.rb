
  FISH = [
    'fish',
    'fiiish',
    'fiiiiish',
    'fiiiish',
    'fffish',
    'ffiiiiisshh',
    'fsh',
    'fiiiissshhhhhh'
  ]

  TILES = [
    "up",
    "right-up",
    "right",
    "right-down",
    "down",
    "left-down",
    "left",
    "left-up"
  ]

  TILES_HASH = {
    "up" => 0,
    "right-up" => 1,
    "right" => 2,
    "right-down"=> 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
  }

  def sluggish(array)
    # find the longest fish in O(n^2) #quicksort or #bubble sort
    array.each_with_index do |fish1, i|
      sorted = true


      array.each_with_index do |fish2, j|
          next if i == j
          sorted = false if fish2.length > fish1.length
      end

      return fish1 if sorted
    end

    array
  end

  p sluggish(FISH) == "fiiiissshhhhhh"

  def dominant_fish(array)
    # find the longest fish in O(n log n) #merge_sort
    return array if array.length <= 1
    mid = array.length / 2

    sorted_left = dominant_fish(array.take(mid))
    sorted_right = dominant_fish(array.drop(mid))

    fish = merge(sorted_left, sorted_right)
  end

  def merge(left, right)
    merged = []

    until left.empty? || right.empty?
      if left.first.length < right.first.length
        merged << left.shift
      else
        merged << right.shift
      end
    end

    merged.concat(left)
    merged.concat(right)

    merged
  end

  p dominant_fish(FISH) == 'fiiiissshhhhhh'


  def clever
    # find the longest fish in O(n) #linear

  end

  def slow_dance(direction, tiles_array)
    tiles_array.each_with_index do |tile, i|
      return i if tile == direction
    end
  end

p slow_dance("up", TILES) == 0
p slow_dance("right-down", TILES) == 3

  def fast_dance(direction, tiles_array)
    tiles_array[direction]
  end

p fast_dance("up", TILES_HASH) == 0
p fast_dance("right-down", TILES_HASH) == 3
