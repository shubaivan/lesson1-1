class MyArray
  attr_accessor :array

  def initialize(arr = [])
    @array = arr
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
    @array.select { |i| i.odd? }
  end

  def even
    @array.select { |i| i.even? }
  end

  def even_each
    array2 = []
    @array.each_with_index do |item|
      if (item % 2).zero?
        array2.push(item)
      end
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
    prepare_alp = alp.map { |i| i.to_sym }
    prepare_alp
    # alp.map.with_index{ |x, i| i + 1 }
  end

  def chars_with_arg(arr = [])
    if arr.any? == false
      arr = @array
    end
    arr.map { |ch| ch.ord - 'A'.ord + 1 }
  end

  def switch
    max_element = @array.max
    min_element = @array.min

    array2 = []
    max_index = 0
    min_index = 0

    @array.each_with_index do |item, index|
      if item == max_element
        max_index = index
      elsif item == max_element
        min_index = index
      end
      array2.push(item)
    end
    array2[min_index] = max_element
    array2[max_index] = min_element
    array2
  end

  def before_min
    min_element = @array.min
    array2 = []
    break_each = 1
    @array.each do |item|
      if item != min_element && break_each == 1
        array2.push(item)
      else
        break_each = 0
      end
    end
    array2
  end

  def three_smallest
    @array.sort_by!(&:to_i)
    @array.take(3)
  end
end
