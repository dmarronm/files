class Cliente < ActiveRecord::Base

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
