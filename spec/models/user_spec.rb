require 'spec_helper'

describe User do
  let(:user) { FactoryGirl.create(:user) }

  subject { user }

  it { should be_valid }

  it { should respond_to(:relationships) }
  it { should respond_to(:feed) }
end
