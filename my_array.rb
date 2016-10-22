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
    # TODO
  end

  def multiple_to_three
    # TODO
  end

  def uniq
    @array.uniq!
  end

  def devide_on_ten
    # TODO
  end

  def chars
    # TODO
  end

  def switch
    # TODO
  end

  def before_min
    # TODO
  end

  def three_smallest
    @array.sort_by!(&:to_i)
    @array.take(3)
  end
end
