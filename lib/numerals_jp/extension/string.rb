class String
  def convert_from_jp_nums
    NumeralsJp::StringConverter.convert_from_jp_nums(self)
  end
end
