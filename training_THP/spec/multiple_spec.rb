require_relative '../lib/multiple'

describe "the is_multiple_of_3_or_5? method" do
    it "should return TRUE when an integer is a multiple of 3 or 5" do
      expect(is_multiple_of_3_or_5?(3)).to eq(true)
      expect(is_multiple_of_3_or_5?(5)).to eq(true)
      expect(is_multiple_of_3_or_5?(51)).to eq(true)
      expect(is_multiple_of_3_or_5?(45)).to eq(true)
    end
  
    it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
      # my examples
      expect(is_multiple_of_3_or_5?(2)).to eq(false)
      expect(is_multiple_of_3_or_5?(8)).to eq(false)
      expect(is_multiple_of_3_or_5?(49)).to eq(false)
      expect(is_multiple_of_3_or_5?(457)).to eq(false)
    end
  end

describe "sum_of_3_or_5_multiples method" do
    it "should loop through numbers from 0 to final_number and return the sum of all multiples of 3 and 5." do
      expect(sum_of_3_or_5_multiples(0)).to eq(0)
      expect(sum_of_3_or_5_multiples(10)).to eq(23)
      expect(sum_of_3_or_5_multiples(11)).to eq(33)
      expect(sum_of_3_or_5_multiples(3)).to eq(0)
    end
  
    it "should return NOT AN INTEGER when the input is NOT AN INTEGER OR A NATURAL NUMBER" do
      # my examples
      expect(sum_of_3_or_5_multiples(1.23)).to eq("Not an integer")
      expect(sum_of_3_or_5_multiples(-1)).to eq("Not an integer")
      expect(sum_of_3_or_5_multiples("chiffre")).to eq("Not an integer")
      expect(sum_of_3_or_5_multiples("ceci est une erreur")).to eq("Not an integer")
    end
  end