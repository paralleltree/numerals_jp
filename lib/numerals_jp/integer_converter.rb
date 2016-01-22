# Represents conversions from Integer.
module NumeralsJp::IntegerConverter
  include NumeralsJp::Constant

  module_function

  # Converts positive integer which is less than 10^16 to Japanese numerals.
  #
  # @example
  #   to_jp(106) # => "百六"
  #
  # @param i [Integer] the integer to convert
  # @return [String] the converted string
  # @raise [ArgumentError] if the integer is not positive or less than 10^16
  def to_jp(i)
    raise ArgumentError.new("the integer out of range") unless i > 0 && i < 10 ** 16

    if i < 10000
      split_digits(i, 1)
        .zip([nil] + SMALL_FACTORS.keys)
        .reject { |num, factor| num == 0 }
        .map { |num, factor| "#{num if num != 1 || factor.nil?}#{factor}" }
        .reverse
        .join
        .tr("1-9", NUMERALS)
    else
      split_digits(i, 4)
        .zip([nil] + LARGE_FACTORS.keys)
        .reject { |num, factor| num == 0 }
        .map { |num, factor| "#{num.to_jp}#{factor}" }
        .reverse
        .join
    end
  end

  # Splits the given integer into specified digits from lower digits.
  #
  # @example split each digit
  #   split_digits(1234, 1) # => [4, 3, 2, 1]
  # @example split 4 digits each
  #   split_digits(1234567, 4) # => [4567, 123]
  #
  # @param i [Integer] the integer to split
  # @param limit [Integer] the number of digits to split each
  # @return [Array<Integer>] an Array of split integers
  def split_digits(i, limit)
    [].tap do |arr|
      while i > 0
        arr << i % 10 ** limit
        i /= 10 ** limit
      end
    end
  end
end
