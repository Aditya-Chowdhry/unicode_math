# encoding: utf-8

module UnicodeMath
  module Geometry
    def self.included(base)
      base.class_eval do
      	def calculate_distance(points1,points2)
      		Math.sqrt((points2[1]-points1[1])**2 + (points2[0]-points1[0])**2)
      	end
        
        define_method('↔') do |array|
        	calculate_distance(self,array)
        end

        define_method('≅') do |array|
          #SSS congruency
          	
          dist1 = Array.new
          dist2 = Array.new
          if(self.size() == 1)
          	dist1 = 1 #Points are always congruent
          else self.size() >= 2
          	s = self.size() - 2
          	(0..s).each do |i|  		
          		dist1.push(calculate_distance(self[i],self[i + 1]))
          	end
          		dist1.push(calculate_distance(self[s + 1],self[0]))
          end

          if(array.size() == 1)
          	dist2 = 1 #Points are always congruent
          else array.size() >= 2
          	s = array.size() - 2
          	(0..s).each do |i|  		
          		dist2.push(calculate_distance(array[i],array[i + 1]))
          	end
          		dist2.push(calculate_distance(array[s + 1],array[0]))
          end
          dist1 = dist1.sort
          dist2 = dist2.sort
          
          (dist1 == dist2)
        end
      end
    end
  end
end

Array.send(:include, UnicodeMath::Geometry)
