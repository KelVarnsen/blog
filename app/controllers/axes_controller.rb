class AxesController < ApplicationController
  require 'Axis/axis'

  def new 
    @axis = Axis.new
  end

  def create
    @axis = Axis.new axis_params
  end

private 
  def axis_params
    ret_params = params.require(:axis).permit(:attackinfintry, :attackartillery, :attacktanks , :attackbombers , :attackfighters, 
                :defendinfintry , :defendartillery , :defendtanks , :defendfighters, :defendbombers)
    ret_params
  end
end

