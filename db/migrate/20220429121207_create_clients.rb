class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :fullname
      t.string :email
      t.string :phone
      t.string :cpf
      t.integer :age

      t.timestamps
    end
  end
end
