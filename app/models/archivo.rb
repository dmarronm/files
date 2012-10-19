class Archivo < ActiveRecord::Base
  belongs_to :categoria
  
  validates :path, :presence => true
  validates_numericality_of :size, :only_integer => true, :greater_than => 0, :less_than => 5000
  
  
end
