# encoding: utf-8

require 'spec_helper'

describe UnicodeMath::Geometry do
  before do
  	@triangle_points_1 = [[0,3],[3,0],[0,0]]
  	@triangle_points_2 = [[0,0],[0,5],[6,0]]
  	@line1 = [[0,0],[0,5]]
  	@line2 = [[2,0],[0,3]]
  	@point1 = [0,0]
  	@point2 = [0,3]
  end
  
  it 'defines congruency in triangles' do
    expect(@triangle_points_1.≅ @triangle_points_1).to eq(true)
  end

  it 'defines congruency in triangles' do
    expect(@triangle_points_1.≅ @triangle_points_2).to eq(false)
  end


  it 'defines congruent lines' do
    expect(@line1.≅ @line1).to eq(true)
  end

  it 'defines congruent lines' do
    expect(@line1.≅ @line2).to eq(false)
  end

  it 'defines distance between two points' do
    expect(@point1.↔ @point2).to eq(3.0)
  end

end
