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
    @array.select{|i| i.odd?}
  end

  def even
    @array.select{|i| i.even?}
  end

  def even_each
    array2 = []
    @array.each_with_index do |item,index|
      if (item %2 == 0) then
        array2.push(item)
      end
    end
    array2
  end

  def multiple_to_three
    @array.select{|i| i %3 == 0 }
  end

  def uniq
    @array.uniq!
  end

  def devide_on_ten
    @array.collect { |x| (x.to_f/10) }
  end

  def chars
    # TODO
  end

  def chars_with_arg (arr = [])
    if arr.any? === false
      arr = @array
    end
    arr.map {|ch| ch.ord - 'A'.ord + 1}
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
