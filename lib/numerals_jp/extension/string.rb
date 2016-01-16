# Extensions of String class
class String
  # Replaces japanese numerals to arabic numerals in the string.
  #
  # @example
  #   "三十六".to_jp # => "36"
  #
  # @return [String] the converted string
  def jp_to_num
    NumeralsJp::StringConverter.jp_to_num(self)
  end
end
