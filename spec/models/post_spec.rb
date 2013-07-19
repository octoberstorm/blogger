require 'spec_helper'

describe Post do
  let(:post) { FactoryGirl.build(:post) }

  subject { post }

  it { should be_valid }

  it { should respond_to :title }
  it { should respond_to :content }

  describe "Empty title" do
    before { post.title = "" }
    it { should_not be_valid }
  end
end

