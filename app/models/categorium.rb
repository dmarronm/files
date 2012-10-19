class Categorium < ActiveRecord::Base
  belongs_to :cliente
  attr_accessible :name, :limitSpace, :availableSpace, :idcliente
  
   validates :name, :presence => true
   
   validates_numericality_of :limitSpace, :only_integer => true, :greater_than => 0, :less_than => 5000
   
   has_many :archivo
   
end
