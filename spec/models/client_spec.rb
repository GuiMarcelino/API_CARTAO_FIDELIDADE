require 'rails_helper'

RSpec.describe Client, type: :model do
  context 'validations presence' do
    before { FactoryBot.build(:client) }

    it { is_expected.to validate_presence_of(:fullname) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:phone) }
    it { is_expected.to validate_presence_of(:cpf) }
  end

  context 'validations uniqueness' do
    before { FactoryBot.build(:client) }

    it { is_expected.to validate_uniqueness_of(:email) }
    it { is_expected.to validate_uniqueness_of(:cpf) }
  end
end
