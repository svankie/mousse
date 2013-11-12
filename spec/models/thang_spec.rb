require 'spec_helper'

describe Thang do
  let(:thang) { FactoryGirl.create(:thang) }

  subject { thang }

  it { should be_valid }
end
