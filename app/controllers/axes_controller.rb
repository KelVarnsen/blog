class AxesController < ApplicationController
  require 'Axis/axis'

  def new 
    @axis = Axis.new
  end

  def create
    @axis = Axis.new{axis_params}
     
    
    
  end


  def axis_params
    ret_params= {:attackinfintry => 'attackinfintry', :attackartillery => 'attackartillery', :attacktanks => 'attacktanks', :attackbombers => 'attackbombers', :attackfighters => 'attackfighters', 
                :defendinfintry => 'defendinfintry', :defendartillery => 'defendartillery', :defendtanks => 'defendtanks', :defendfighters => 'defendfighters', :defendbombers => 'defendbombers'}
    ret_params 
  end


end

