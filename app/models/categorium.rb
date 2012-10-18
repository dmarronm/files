class Categorium < ActiveRecord::Base
  belongs_to :cliente
  attr_accessible :name, :limitSpace, :availableSpace, :idcliente
end
