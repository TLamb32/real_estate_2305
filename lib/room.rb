class Room
  attr_reader :category,
              :has_been_painted

  def initialize(category, width, length)
    @category = category
    @width = width
    @length = length
    @has_been_painted = false
  end

  def area
    @width * @length.to_i
  end

  def is_painted?
    @has_been_painted
  end

  def paint
    @has_been_painted = true
  end
end
