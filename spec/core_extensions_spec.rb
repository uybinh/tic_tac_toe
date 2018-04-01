require "spec_helper"

RSpec.describe Array do
  context "#all_empty" do
    it "returns true if all elements of the Array are empty" do
      expect(['','',''].all_empty?).to be true
    end

    it "returns false if some of the Array elements are not empty" do
      expect(['',1,'',Object.new, :a].all_empty?).to be false
    end

    it "returns true for an empty Array" do
      expect([].all_empty?).to be true
    end
  end

  context "#all_same?" do
    it "returns true if all elements of the Array are the same" do
      expect(['a','a','a'].all_same?).to be true
    end

    it "returns false if some of the Array elements are not the same" do
      expect(["", 1, "", Object.new, :a].all_same?).to be false
    end

    it "returns true for an empty Array" do
      expect([].all_same?).to be true
    end
  end

  context "#any_empty" do
    it "return true if any elements of the Array are empty" do
      expect([1,:a,'',Object.new].any_empty?).to be true
    end

    it "return false if none of the Array elements are empty" do
      expect([1,2,3,"a",:b].any_empty?).to be false
    end
  end

  context "#none_empty" do
    it "returns true if all Array elements are not empty" do
      expect([1,2,3,"a",:b].none_empty?).to be true
    end

    it "return false if any Array elements are empty" do
      expect([1,:a,'',Object.new].none_empty?).to be false
    end
  end

end