# frozen_string_literal: true

require_relative 'logic'
require_relative 'test'

puts 'enter x'
x = gets.to_f
puts 'enter z'
z = gets.to_f

puts calc(x, z)
