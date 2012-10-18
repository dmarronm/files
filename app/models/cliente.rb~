class Cliente < ActiveRecord::Base

 has_many :categoria
 
 validates :username, :presence => true
 validates :name, :presence => true
 validates :password_hash, :presence => true
 validates :password_salt, :presence => true

  def self.authenticate(username, password)
    cliente = find_by_username(username)
    if cliente 
    #&& cliente.password_hash ==
      cliente
    else
      nil
    end 
  end
  
end
