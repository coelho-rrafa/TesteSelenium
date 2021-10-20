require 'brazilian_documents'
require 'cpf_faker'
require 'faker'

module Factory
  class Dynamic
    def self.user
      user = {
        :username => "Teste_#{Faker::Name.last_name}",
        :email => "teste.#{Faker::Name.first_name}.#{rand(9999)}@mailsac.com",
        :password => 'Ab1234',
        :phone => '12345678',
        :firstname =>  Faker::Name.first_name,
        :lastname => Faker::Name.last_name,
        :birthdate => '01/14/1991',
        :country => 'Brazil',
        :city => 'São Paulo',
        :address => 'Rua Teste, 123',
        :postcode => '12345',
        :occupation => 'Employee',
        :website => 'www.teste.com',
        :comments => 'Teste Teste Teste Teste'
      }

      user
    end
  end
end
