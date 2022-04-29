class Client < ApplicationRecord

  validates :fullname, presence: true
  validates :email, presence: true
  validates :phone, presence: true
  validates :cpf, presence: true


  validates :email, uniqueness: true
  validates :cpf, uniqueness: true

end
