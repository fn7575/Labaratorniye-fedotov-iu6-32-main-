# frozen_string_literal: true

require_relative 'logic'
require_relative 'test'

puts 'Введите целочисленный массив'
array = gets.to_s.split(' ')

arr = IntArray.new(array)
arr.change_arr
arr.print
