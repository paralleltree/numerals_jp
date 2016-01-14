module NumeralsJp::StringConverter
  include NumeralsJp::Constant

  DETECT_PATTERN = /([#{NUMERALS}#{SMALL_FACTORS.keys.join}]+[#{LARGE_FACTORS.keys.join}]?)+/
  LARGE_EXTRACT_PATTERN = /([#{NUMERALS}#{SMALL_FACTORS.keys.join}]+)([#{LARGE_FACTORS.keys.join}])?/
  SMALL_EXTRACT_PATTERN = /(([#{NUMERALS}])?([#{SMALL_FACTORS.keys.join}])?)/

  module_function
  def convert_from_jp_nums(str)
    str.gsub(DETECT_PATTERN) do |s|
      s.scan(LARGE_EXTRACT_PATTERN).map { |m|
        m.first.scan(SMALL_EXTRACT_PATTERN).reject { |m| m.first.empty? }.map { |m|
          num, factor = m[1], m[2]
          (num || "1").tr(NUMERALS, "1-9").to_i * (SMALL_FACTORS[factor] || 1)
        }.inject(:+) * (LARGE_FACTORS[m[1]] || 1)
      }.inject(:+)
    end
  end
end
