# frozen_string_literal: true

require_relative 'logic.rb'
require_relative 'test.rb'

puts 'Запишите символы в первый файл через пробел'
ch_f1 = gets.to_s
puts 'Запишите символы во второй файл через пробел'
ch_f2 = gets.to_s
f = FilesClass.new('f1.txt', 'f2.txt', ch_f1, ch_f2)
f.work_with_file
