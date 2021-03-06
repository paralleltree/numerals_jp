# Extensions of String class
class String
  # Replaces Japanese numerals with Arabic numerals in the string.
  #
  # @example
  #   "三十六".jp_to_num # => "36"
  #
  # @return [String] the converted string
  def jp_to_num
    NumeralsJp::StringConverter.jp_to_num(self)
  end
end
