
class Axis

  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming 




  attr_accessor:attackinfintry, :attackartillery, :attacktanks, :attackbombers, :attackfighters, :defendinfintry, :defendartillery, :defendtanks, :defendfighters, :defendbombers

  # def initialize(attackinfintry, attackartillery, attacktanks, attackbombers, attackfighters, defendinfintry, defendartillery, defendtanks, defendfighters, defendbombers)
  #   @attackinfintry = attackinfintry
  #   @attackartillery = attackartillery
  #   @attacktanks = attacktanks
  #   @attackfighters = attackfighters
  #   @attackbombers = attackbombers
  #   @defendinfintry = defendinfintry
  #   @defendartillery = defendartillery
  #   @defendtanks = defendtanks
  #   @defendfighters = defendfighters
  #   @defendbombers = defendbombers
  # end


  

  def persisted?
    false
  end

  def total(attackinfintry, attackartillery)
    total = attackinfintry + attackartillery + 3
   return total
  end






end


# def axis_sim(:attackinfintry, :attackartillery, :attacktanks, :attackbombers, :defendbombers, :defendinfintry, :defendartillery, :defendtanks, :defendfighters) 
#     puts "Welcome to the Axis and Allies Battlefield"

  
#       attackinfintry = :attackinfintry
    
#       attackartillery = :attackartillery
   
#       attacktanks = :attacktanks
  
#       attackfighters = :attackfighters
   
#       attackbombers = :attackbombers

    
#       defendinfintry = :defendinfintry
   
#       defendartillery = :defendartillery
 
#       defendtanks = :defendtanks
    
#       defendfighters = :defendfighters
  
#       defendbombers = :defendbombers

#     totalattack = attackinfintry + attacktanks + attackfighters + attackbombers + attackartillery
#     totaldefend = defendbombers + defendfighters + defendtanks + defendartillery + defendinfintry
#     puts "Total Attack Forces:", totalattack
#     puts "Total Defensive Forces:", totaldefend



#     puts "Press enter to begin assualt"
#      x = gets.chomp


     

#     def infintryroll(value, value2) 
#       if value2 < value
#         artillerysupport = value2
#         infantry = value - value2 

#         infintry_result = infantry.times.map { rand(1..6) }
#         puts "Infantry rolls:", infintry_result

      
#           infintryhit = 0
#         infintry_result.each do |n|

#           if n <= 1
#             infintryhit += 1
#           end
#         end
#         puts "Infintry hits:", infintryhit
#         artillarysupported = artillerysupport.times.map { rand(1..6) }
#         puts "artillary supported infantry rolls:", artillarysupported

      
#           artillaryhit = 0
#         artillarysupported.each do |n|

#           if n <= 2
#             artillaryhit += 1
#           end
#         end
#         puts "artillary supported infantry hits:", artillaryhit
#         hit = infintryhit + artillaryhit
#       else 
#         artillerysupport = value 

#          artillarysupported = artillerysupport.times.map { rand(1..6) }
#         puts "artillary supported infantry rolls:", artillarysupported

      
#           hit = 0
#         artillarysupported.each do |n|

#           if n <= 2
#             hit += 1
#           end
#         end
#       end
#       return hit  
#     end

#     def tankroll(value) 
#       tank_result = value.times.map { rand(1..6) }
#       puts "tankrolls:", tank_result

      
#       hit = 0
#       tank_result.each do |n|
#         if n <= 3
#           hit += 1
#         end
#       end
#       puts "tank hits:", hit
#       return hit  
#     end

#     def fighterroll(value) 
#       fighter_result = value.times.map { rand(1..6) }
#       puts "fighterrolls:", fighter_result

      
#       hit = 0
#       fighter_result.each do |n|
#         if n <= 3
#           hit += 1
#         end
#       end
#       puts "fighter hits:", hit
#       return hit  
#     end

#     def artillaryroll(value) 
#       artillary_result = value.times.map { rand(1..6) }
#       puts "artillary rolls:", artillary_result

      
#       hit = 0
#       artillary_result.each do |n|
#         if n <= 2
#           hit += 1
#         end
#       end
#       puts "artillary hits:", hit
#       return hit  
#     end

#     def bomberroll(value) 
#       bomber_result = value.times.map { rand(1..6) }
#       puts "bomber rolls:", bomber_result

      
#       hit = 0
#       bomber_result.each do |n|
#         if n <= 4
#           hit += 1
#         end
#       end
#       puts "Bomber hits:", hit
#       return hit  
#     end

#     bomberhit = bomberroll(attackbombers)
#     artillaryhit = artillaryroll(attackartillery)
#     fighterhit = fighterroll(attackfighters)
#     tankhit = tankroll(attacktanks)
#     infantryhit = infintryroll(attackinfintry, attackartillery)
#     totalhits = tankhit + infantryhit + artillaryhit + bomberhit
#     puts "Total attack hits:", totalhits


#     def defartillaryroll(value) 
#       def_artillary_result = value.times.map { rand(1..6) }
#       puts "artillary rolls:", def_artillary_result

      
#       hit = 0
#       def_artillary_result.each do |n|
#         if n <= 2
#           hit += 1
#         end
#       end
#       puts "Defensive artillary hits:", hit
#       return hit  
#     end

#     def defbomberroll(value) 
#       def_bomber_result = value.times.map { rand(1..6) }
#       puts "bomber rolls:", def_bomber_result

      
#       hit = 0
#       def_bomber_result.each do |n|
#         if n <= 1
#           hit += 1
#         end
#       end
#       puts "Defensive Bomber hits:", hit
#       return hit  
#     end
      
#     def definfintryroll(value) 
#       def_infintry_result = value.times.map { rand(1..6) }
#       puts "Defensive infintry rolls:", def_infintry_result

      
#       hit = 0
#       def_infintry_result.each do |n|
#         if n <= 2
#           hit += 1
#         end
#       end
#       puts "Defensive infintry hits:", hit
#       return hit  
#     end

#     def deffighterroll(value) 
#       def_fighter_result = value.times.map { rand(1..6) }
#       puts "Defense fighter rolls:", def_fighter_result

      
#       hit = 0
#       def_fighter_result.each do |n|
#         if n <= 4
#           hit += 1
#         end
#       end
#       puts "Defensive fighter hits:", hit
#       return hit  
#     end

#     def deftankroll(value) 
#       def_tank_result = value.times.map { rand(1..6) }
#       puts "Defensive tank rolls:", def_tank_result

      
#       hit = 0
#       def_tank_result.each do |n|
#         if n <= 3
#           hit += 1
#         end
#       end
#       puts "Defensive tank hits:", hit
#       return hit  
#     end

#     definfintryhit = definfintryroll(defendinfintry)
#     defartillaryhit =defartillaryroll(defendartillery)
#     deftankhit = deftankroll(defendtanks)
#     defbomberhit = defbomberroll(defendbombers)
#     deffighterhit = deffighterroll(defendfighters)

#     total_defensive_hits = definfintryhit + defartillaryhit + deftankhit + defbomberhit + deffighterhit

#     puts "Total Defensive Hits:", total_defensive_hits

#     puts "Round summary", "Attack hits:", totalhits, "Defensive hits:", total_defensive_hits

#     puts "REMOVE YOUR DEAD"

   


#end


















   




