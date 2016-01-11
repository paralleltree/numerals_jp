class String
  def convert_from_jp_nums
    NumeralsJp::Converter.convert_from_jp_nums(self)
  end
end
