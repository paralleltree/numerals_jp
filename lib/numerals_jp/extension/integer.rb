class Integer
  def to_jp
    NumeralsJp::IntegerConverter.to_jp(self)
  end
end
