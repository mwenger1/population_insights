require 'rails_helper'

RSpec.describe User, :type => :model do
  let(:user){build(:user)}

  it "is valid with an email and password" do
  	expect(user).to be_valid
  end

  it "is invalid without a password" do
  	expect(build(:user, password: "")).to_not be_valid
  end

  it "is invalid without an email" do
  	expect(build(:user, email: "")).to_not be_valid
  end

end
