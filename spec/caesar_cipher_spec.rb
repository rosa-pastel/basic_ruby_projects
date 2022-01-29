require './lib/caesar_cipher'

describe ".caesar_cipher" do
    it "converts a sentence with a key of 1 properly" do
        expect(caesar_cipher('Cats are awesome', 1)).to eql('Dbut bsf bxftpnf')
    end
    it "converts a sentence with a key of 2 properly" do
        expect(caesar_cipher('Cats are awesome', 2)).to eql('Ecvu ctg cyguqog')
    end
    it "converts a sentence with a key of 0 properly" do
        expect(caesar_cipher('Cats are awesome', 0)).to eql('Cats are awesome')
    end
    it "converts a sentence with punctuations properly" do
        expect(caesar_cipher('<3 Cats <3 are awesome :)', 2)).to eql('<3 Ecvu <3 ctg cyguqog :)')
    end
end