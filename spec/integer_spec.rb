require 'spec_helper'

describe Integer do
  describe '#to_jp' do
    context 'when valid numbers' do
      it 'converts from single digit integer' do
        expect(1.to_jp).to eq("一")
      end

      it 'converts from integers power of 10' do
        expect(10.to_jp).to eq("十")
        expect(100.to_jp).to eq("百")
        expect(1000.to_jp).to eq("千")
        expect(10000.to_jp).to eq("一万")
        expect(100000000.to_jp).to eq("一億")
        expect(1000000000000.to_jp).to eq("一兆")
      end

      it 'converts from integers' do
        expect(36.to_jp).to eq("三十六")
        expect(106.to_jp).to eq("百六")
        expect(10001.to_jp).to eq("一万一")
        expect(32768.to_jp).to eq("三万二千七百六十八")
        expect(2147483648.to_jp).to eq("二十一億四千七百四十八万三千六百四十八")
        expect(9999999999999999.to_jp).to eq("九千九百九十九兆九千九百九十九億九千九百九十九万九千九百九十九")
      end
    end
  end

  context 'when invalid numbers' do
    it 'does not convert from zero' do
      expect { 0.to_jp }.to raise_error(ArgumentError)
    end

    it 'does not convert from negative integers' do
      expect { -1.to_jp }.to raise_error(ArgumentError)
    end

    it 'does not convert from integer that is not less than 10^16' do
      expect { (10 ** 16).to_jp }.to raise_error(ArgumentError)
    end
  end
end
