# frozen_string_literal: true

require_relative 'logic.rb'

puts 'Точночсть 0.001'
q1 = computation(0.001)
puts 'Точночсть 0.0001'
q2 = computation(0.0001)
puts ''
puts q1
puts q2
