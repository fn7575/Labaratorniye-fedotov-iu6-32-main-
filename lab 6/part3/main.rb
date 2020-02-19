# frozen_string_literal: true

require_relative 'logic'
require_relative 'test'

puts 'Введите число разбиений'
n = gets.to_i
integral = Integral.new(n)
puts integral.b_integral
puts integral.l_integral
