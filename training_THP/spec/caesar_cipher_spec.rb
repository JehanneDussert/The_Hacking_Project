require_relative '../lib/caesar_cipher'

describe "the caesar_cipher method" do
    it "should return A NEW STRING" do
      expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
      expect(caesar_cipher("a", 1)).to eq("b")
      expect(caesar_cipher("Z", 1)).to eq("A")
      expect(caesar_cipher("Ceci est un secret", 100)).to eq("Bdbh drs tm rdbqds")
    end
  
    it "should return THE SAME STRING" do
      expect(caesar_cipher("!", 5)).to eq("!")
      expect(caesar_cipher("123", 109284)).to eq("123")
      expect(caesar_cipher("..!!!!!!", 1)).to eq("..!!!!!!")
      expect(caesar_cipher("Salut", 0)).to eq("Salut")
    end
  end
