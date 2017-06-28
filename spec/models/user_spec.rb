require 'rails_helper'

RSpec.describe User, type: :model do
  let!(:user) { create(:user) }

  subject { user }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }

  it { is_expected.to be_valid }

  describe '#validations' do
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_confirmation_of(:email) }
    it { is_expected.to allow_value('email@email.com.br').for(:email) }

    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_length_of(:name).is_at_most(50)}
    it { is_expected.to validate_length_of(:password).is_at_least(6) }
  end
end
