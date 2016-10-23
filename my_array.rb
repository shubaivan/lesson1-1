class MyArray
  attr_accessor :array

  def initialize(arr = [])
    @array = arr
    @break_each = 1
  end

  def size
    @array.count
  end

  def reverse
    @array.reverse!
  end

  def max
    @array.max
  end

  def min
    @array.min
  end

  def desc
    @array.sort_by!(&:to_i)
    @array.reverse!
  end

  def asc
    @array.sort_by!(&:to_i)
  end

  def odd
    @array.select(&:odd?)
  end

  def even
    @array.select(&:even?)
  end

  def even_each
    array2 = []
    @array.each_with_index do |item|
      array2.push(item) if item % 2.zero?
    end
    array2
  end

  def multiple_to_three
    @array.select { |i| (i % 3).zero? }
  end

  def uniq
    @array.uniq!
  end

  def devide_on_ten
    @array.collect { |x| (x.to_f / 10) }
  end

  def chars
    alp = @array.map { |i| (i + 9).to_s 36 }
    prepare_alp = alp.map(&:to_sym)
    prepare_alp
    # alp.map.with_index{ |x, i| i + 1 }
  end

  def chars_with_arg(arr = [])
    arr = @array if arr.any? == false
    arr.map { |ch| ch.ord - 'A'.ord + 1 }
  end

  def c
    min_index_value_array = @array.each_with_index.min
    max_index_value_array = @array.each_with_index.max
    result = @array
    result[min_index_value_array[1]] = max_index_value_array[0]
    result[max_index_value_array[1]] = min_index_value_array[0]
    result
  end

  def before_min
    min_element = @array.min
    array2 = []
    @array.each do |item|
      if item != min_element && @break_each == 1
        array2.push(item)
      else
        @break_each = 0
      end
    end
    array2
  end

  def three_smallest
    @array.sort_by!(&:to_i)
    @array.take(3)
  end
end
