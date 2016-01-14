require 'spec_helper'

describe String do
  describe '#jp_to_num' do
    context 'when only japanese numerals' do
      it 'converts from japanese numerals' do
        expect("一".jp_to_num).to eq("1")
        expect("三十六".jp_to_num).to eq("36")
        expect("四千九十六".jp_to_num).to eq("4096")
        expect("六万五千五百三十六".jp_to_num).to eq("65536")
        expect("四十六億八千三百二万九百六十".jp_to_num).to eq("4683020960")
      end

      it 'converts from only small unit character' do
        expect("十".jp_to_num).to eq("10")
        expect("百".jp_to_num).to eq("100")
        expect("千".jp_to_num).to eq("1000")
      end

      context 'with large unit characters' do
        it 'converts from valid numbers' do
          expect("一万".jp_to_num).to eq("10000")
          expect("六億".jp_to_num).to eq("600000000")
          expect("十四兆".jp_to_num).to eq("14000000000000")
        end
        it 'does not convert from invalid numbers(only unit character)' do
          expect("万".jp_to_num).to eq("万")
          expect("億".jp_to_num).to eq("億")
          expect("兆".jp_to_num).to eq("兆")
        end
      end
    end

    context 'in sentences' do
      it 'converts date' do
        expect("十二月三十一日".jp_to_num).to eq("12月31日")
      end
    end
  end
end
