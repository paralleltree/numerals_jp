require 'spec_helper'

describe String do
  describe '#convert_from_jp_nums' do
    context 'only japanese numerals' do
      it 'converts from japanese numerals' do
        expect("一".convert_from_jp_nums).to eq("1")
        expect("三十六".convert_from_jp_nums).to eq("36")
        expect("四千九十六".convert_from_jp_nums).to eq("4096")
        expect("六万五千五百三十六".convert_from_jp_nums).to eq("65536")
        expect("四十六億八千三百二万九百六十".convert_from_jp_nums).to eq("4683020960")
      end

      it 'converts from only small unit character' do
        expect("十".convert_from_jp_nums).to eq("10")
        expect("百".convert_from_jp_nums).to eq("100")
        expect("千".convert_from_jp_nums).to eq("1000")
      end

      context 'converts from japanese numerals with large unit characters' do
        it 'converts from valid numbers' do
          expect("一万".convert_from_jp_nums).to eq("10000")
          expect("六億".convert_from_jp_nums).to eq("600000000")
          expect("十四兆".convert_from_jp_nums).to eq("14000000000000")
        end
        it 'does not convert from invalid numbers(only unit character)' do
          expect("万".convert_from_jp_nums).to eq("万")
          expect("億".convert_from_jp_nums).to eq("億")
          expect("兆".convert_from_jp_nums).to eq("兆")
        end
      end
    end

    context 'with sentences' do
      it 'converts date' do
        expect("十二月三十一日".convert_from_jp_nums).to eq("12月31日")
      end
    end
  end
end
