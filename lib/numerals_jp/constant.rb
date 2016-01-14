module NumeralsJp::Constant
  NUMERALS = "一二三四五六七八九"
  SMALL_FACTORS = {
    "十" => 10,
    "百" => 100,
    "千" => 1000
  }.freeze
  LARGE_FACTORS = {
    "万" => 10 ** 4,
    "億" => 10 ** 8,
    "兆" => 10 ** 12
  }.freeze
end
