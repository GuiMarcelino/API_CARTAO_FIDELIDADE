require 'rails_helper'

RSpec.describe Client, type: :model do
  context 'validations presence' do
    it { is_expected.to validate_presence_of(:fullname) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:phone) }
    it { is_expected.to validate_presence_of(:cpf) }
  end

  context 'validations uniqueness' do
    it { is_expected.to validate_uniqueness_of(:email) }
    it { is_expected.to validate_uniqueness_of(:cpf) }
  end

  context 'Instancia da classe Client' do
    it { is_expected.to be_instance_of(Client) }
  end

  context 'campos nulos ou brancos, não permita campos nulos ' do
    it { is_expected.not_to allow_value(nil).for(:fullname) }
    it { is_expected.not_to allow_value(nil).for(:email) }
    it { is_expected.not_to allow_value(nil).for(:phone) }
    it { is_expected.not_to allow_value(nil).for(:cpf) }
  end

  context 'Permite campo age seja nulo' do
    it { is_expected.to allow_value(nil).for(:age) }
  end

  context 'Validando atributos para classe esperada' do
    it 'Age class Integer' do
      client = create(:client)
      expect(client.age).to be_instance_of(Integer)
    end

    it 'CPF class String' do
      client = create(:client)
      expect(client.cpf).to be_instance_of(String)
    end
  end
end
