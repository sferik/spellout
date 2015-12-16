require "spec"
require "../src/phonetic_alphabetizer"

describe PhoneticAlphabetizer do
  it "converts uppercase strings to the phonetic alphabet" do
    object = PhoneticAlphabetizer.new("WTF")
    object.call.should eq("Whiskey Tango Foxtrot")
  end

  it "converts lowercase strings to the phonetic alphabet" do
    object = PhoneticAlphabetizer.new("wtf")
    object.call.should eq("Whiskey Tango Foxtrot")
  end

  it "converts strings with spaces to the phonetic alphabet" do
    object = PhoneticAlphabetizer.new("foo bar")
    object.call.should eq("Foxtrot Oscar Oscar Space Bravo Alpha Romeo")
  end

  it "converts string with stops to the phonetic alphabet" do
    object = PhoneticAlphabetizer.new("foo.bar")
    object.call.should eq("Foxtrot Oscar Oscar Stop Bravo Alpha Romeo")
  end

  it "converts strings with dashes to the phonetic alphabet" do
    object = PhoneticAlphabetizer.new("foo-bar")
    object.call.should eq("Foxtrot Oscar Oscar Dash Bravo Alpha Romeo")
  end

  it "converts the string to the phonetic alphabet" do
    object = PhoneticAlphabetizer.new("123")
    object.call.should eq("One Two Three")
  end

  it "passes through non-dictionary characters" do
    object = PhoneticAlphabetizer.new("foo_bar")
    object.call.should eq("Foxtrot Oscar Oscar _ Bravo Alpha Romeo")
  end
end
