class Axis
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming 




  attr_accessor :attackinfintry, :attackartillery, :attacktanks, :attackbombers, :attackfighters, :defendinfintry, :defendartillery, :defendtanks, :defendfighters, :defendbombers 
  def initialize(attributes = {})

    attributes.each do |name, value|
      send("#{name}=", value) if !value.empty?

    end
  end

  def persisted?
    false
  end

  def total
    total = self.attackinfintry + self.attackartillery 
   return total
  end
end














   




