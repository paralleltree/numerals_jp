# Extensions of Integer class
class Integer
  # Converts positive integer which is less than 10^16 to Japanese numerals.
  #
  # @example
  #   106.to_jp # => "百六"
  #
  # @return [String] the converted string
  # @raise [ArgumentError] if the integer is not positive or less than 10^16
  def to_jp
    NumeralsJp::IntegerConverter.to_jp(self)
  end
end
