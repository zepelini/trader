require 'rails_helper'

RSpec.describe User do
  let(:fake_password) { $fake_password = Faker::String.random }

  subject { 
    described_class.new(
      name: Faker::Name.name, 
      email: Faker::Internet.email, 
      password: fake_password,
      password_confirmation: fake_password
    )
  }
  context 'fields' do
    it 'must contain a name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'must contain a valid e-mail' do
      subject.email = nil
      expect(subject).to_not be_valid

      subject.email = Faker::String.random
      expect(subject).to_not be_valid
    end

    it 'must contain a password' do
      subject.password = nil
      expect(subject).to_not be_valid
    end

    it 'must contain a password confirmation' do
      subject.password_confirmation = nil
      expect(subject).to_not be_valid

      subject.password = Faker::String.random
      subject.password_confirmation = Faker::String.random
      expect(subject).to_not be_valid
    end
  end
  
end
