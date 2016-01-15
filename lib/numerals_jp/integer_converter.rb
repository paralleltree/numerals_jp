module NumeralsJp::IntegerConverter
  include NumeralsJp::Constant

  module_function
  def to_jp(i)
    raise ArgumentError.new("Argument out of range.") unless i > 0 && i < 10 ** 16

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

  def split_digits(i, limit)
    [].tap do |arr|
      while i > 0
        arr << i % 10 ** limit
        i /= 10 ** limit
      end
    end
  end
end
