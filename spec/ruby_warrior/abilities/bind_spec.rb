require 'spec_helper'

describe RubyWarrior::Abilities::Bind do
  before(:each) do
    @bind = RubyWarrior::Abilities::Bind.new(stub(:say => nil))
  end
  
  it "should bind recipient" do
    receiver = RubyWarrior::Units::Base.new
    @bind.stubs(:unit).returns(receiver)
    @bind.perform
    expect(receiver).to be_bound
  end
  
  it "should do nothing if no recipient" do
    @bind.stubs(:unit).returns(nil)
    expect{ @bind.perform }.not_to raise_error
  end
end
